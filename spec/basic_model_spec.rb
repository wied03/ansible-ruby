require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::BaseModel do
  subject { instance.to_h }

  let(:klass) do
    Class.new(Ansible::Ruby::BaseModel) do
      attribute :foo, required: true
      attribute :bar
    end
  end

  context 'valid' do
    let(:instance) { klass.new foo: 123 }

    describe 'hash' do
      it { is_expected.to eq({ 'foo' => 123 }) }
    end

    describe 'attributes' do
      subject { instance }

      it { is_expected.to have_attributes foo: 123 }
    end
  end

  context 'explicit nil' do
    let(:klass) do
      Class.new(Ansible::Ruby::BaseModel) do
        attribute :foo, required: true, type: Integer, nil: true
      end
    end

    let(:instance) { klass.new foo: nil }

    it { is_expected.to eq({ 'foo' => nil }) }
  end

  context 'nested unit' do
    let(:nested_klass) do
      Class.new(Ansible::Ruby::BaseModel) do
        attribute :image
      end
    end

    let(:instance) { klass.new foo: nested_klass.new(image: 'centos') }

    it { is_expected.to eq({ 'foo' => { 'image' => 'centos' } }) }
  end

  context 'single value via DSL array' do
    let(:instance) { klass.new foo: [123] }

    it { is_expected.to eq({ 'foo' => 123 }) }
  end

  context 'type validated' do
    let(:klass) do
      Class.new(Ansible::Ruby::BaseModel) do
        attribute :foo, required: true, type: Integer, nil: true
        attribute :bar, type: [Integer, Float]
      end
    end

    context 'attribute present' do
      subject { lambda { klass.new foo: 'howdy' } }

      it { is_expected.to raise_error 'Attribute foo expected to be an Integer but was a String' }
    end

    context 'bar attribute not present' do
      let(:instance) { klass.new foo: [123] }

      it { is_expected.to eq({ 'foo' => 123 }) }
    end

    context 'nil value' do
      let(:instance) { klass.new foo: nil }

      it { is_expected.to eq({ 'foo' => nil }) }
    end

    context 'multiple types' do
      let(:instance) { klass.new foo: nil, bar: 45.44 }

      it { is_expected.to eq({ 'foo' => nil, 'bar' => 45.44 }) }
    end
  end

  context 'nil not allowed' do
    context 'pass' do
      let(:instance) { klass.new foo: 123 }

      it { is_expected.to eq({ 'foo' => 123 }) }
    end

    context 'fail' do
      subject { lambda { klass.new foo: nil } }

      it { is_expected.to raise_error 'Attribute foo cannot be nil' }
    end
  end

  context 'array not allowed' do
    let(:klass) do
      Class.new(Ansible::Ruby::BaseModel) do
        attribute :foo, required: true, type: Integer
      end
    end

    subject { lambda { klass.new foo: [123, 456] } }

    it { is_expected.to raise_error 'Attribute foo expected to be an Integer but was a Array' }
  end

  context 'array allowed' do
    let(:klass) do
      Class.new(Ansible::Ruby::BaseModel) do
        attribute :foo, required: true, type: Array
      end
    end

    let(:instance) { klass.new foo: [123, 456] }

    it { is_expected.to eq({ 'foo' => [123, 456] }) }
  end

  context 'choices' do
    let(:klass) do
      Class.new(Ansible::Ruby::BaseModel) do
        attribute :foo, required: true
        attribute :bar, choices: [:bob, :sally]
      end
    end

    context 'valid' do
      let(:instance) { klass.new foo: 123, bar: :bob }

      it { is_expected.to eq({ 'foo' => 123, 'bar' => 'bob' }) }
    end

    context 'not in list' do
      subject { lambda { klass.new foo: 123, bar: 123 } }

      it { is_expected.to raise_error 'Attribute bar can only be [:bob, :sally]' }
    end
  end

  context 'unknown attribute' do
    subject { lambda { klass.new foo: 123, unknown: 123 } }

    it { is_expected.to raise_error 'Attributes [:unknown] are unknown. Valid attributes are [:foo, :bar]' }
  end

  context 'missing attribute' do
    subject { lambda { klass.new bar: 123 } }

    it { is_expected.to raise_error 'Attribute foo is required' }
  end

  context 'missing attributes' do
    let(:klass) do
      Class.new(Ansible::Ruby::BaseModel) do
        attribute :foo, required: true
        attribute :bar, required: true
      end
    end

    subject { lambda { klass.new } }

    it { is_expected.to raise_error 'Attributes [:foo, :bar] are required' }
  end
end
