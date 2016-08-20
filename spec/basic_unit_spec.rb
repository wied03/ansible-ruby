require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::BasicUnit do
  before { stub_const('EC2', klass) }
  subject { instance.to_h }

  let(:klass) do
    Class.new(Ansible::Ruby::BasicUnit) do
      attribute :foo, required: true
      attribute :bar
    end
  end

  context 'valid' do
    let(:instance) { klass.new foo: 123 }

    describe 'hash' do
      it { is_expected.to eq({ 'ec2' => { 'foo' => 123 } }) }
    end

    describe 'attributes' do
      subject { instance }

      it { is_expected.to have_attributes foo: 123 }
    end
  end

  context 'single value via DSL array' do
    let(:instance) { klass.new foo: [123] }

    it { is_expected.to eq({ 'ec2' => { 'foo' => 123 } }) }
  end

  context 'array not allowed' do
    subject { lambda { klass.new foo: [123, 456] } }

    it { is_expected.to raise_error 'Attribute foo cannot be an array' }
  end

  context 'array allowed' do
    let(:klass) do
      Class.new(Ansible::Ruby::BasicUnit) do
        attribute :foo, required: true, array: true
      end
    end

    let(:instance) { klass.new foo: [123, 456] }
    
    it { is_expected.to eq({ 'ec2' => { 'foo' => [123, 456] } }) }
  end

  context 'choices' do
    let(:klass) do
      Class.new(Ansible::Ruby::BasicUnit) do
        attribute :foo, required: true
        attribute :bar, choices: [:bob, :sally]
      end
    end

    context 'valid' do
      let(:instance) { klass.new foo: 123, bar: :bob }

      it { is_expected.to eq({ 'ec2' => { 'foo' => 123, 'bar' => 'bob' } }) }
    end

    context 'not in list' do
      subject { lambda { klass.new foo: 123, bar: 123 } }

      it { is_expected.to raise_error 'Attribute bar can only be [:bob, :sally]' }
    end
  end

  context 'missing attribute' do
    subject { lambda { klass.new bar: 123 } }

    it { is_expected.to raise_error 'Attribute foo is required' }
  end

  context 'missing attributes' do
    let(:klass) do
      Class.new(Ansible::Ruby::BasicUnit) do
        attribute :foo, required: true
        attribute :bar, required: true
      end
    end

    subject { lambda { klass.new } }

    it { is_expected.to raise_error 'Attributes [:foo, :bar] are required' }
  end
end
