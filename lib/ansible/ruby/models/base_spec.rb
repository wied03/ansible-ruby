require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::Models::Base do
  before { stub_const 'Ansible::Ruby::TestModel', klass }

  subject { instance }

  let(:klass) do
    Class.new(Ansible::Ruby::Models::Base) do
      attribute :foo
      validates :foo, presence: true
      attribute :bar
    end
  end

  context 'valid' do
    let(:instance) { klass.new foo: 123 }

    it { is_expected.to be_valid }
    it { is_expected.to have_hash foo: 123 }
    it { is_expected.to have_attributes foo: 123 }
  end

  context 'serialize array as flat' do
    let(:klass) do
      Class.new(Ansible::Ruby::Models::Base) do
        attribute :foo, flat_array: true
        validates :foo, type: TypeGeneric.new(Integer)
      end
    end

    let(:instance) { klass.new foo: [123, 456] }

    it { is_expected.to have_hash foo: '123,456' }
  end

  context 'explicit nil' do
    let(:klass) do
      Class.new(Ansible::Ruby::Models::Base) do
        attribute :foo
        validates :foo, presence: true, allow_nil: true
      end
    end

    let(:instance) { klass.new foo: nil }

    it { is_expected.to be_valid }
    it { is_expected.to have_hash foo: nil }
  end

  context 'nested unit' do
    let(:nested_klass) do
      Class.new(Ansible::Ruby::Models::Base) do
        attribute :image
      end
    end

    let(:instance) { klass.new foo: nested_klass.new(image: 'centos') }

    it { is_expected.to have_hash(foo: { image: 'centos' }) }
  end

  context 'missing attribute' do
    let(:instance) { klass.new bar: 123 }

    it { is_expected.to_not be_valid }
    it { is_expected.to have_errors foo: "can't be blank" }
  end
end
