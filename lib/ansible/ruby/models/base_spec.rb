# frozen_string_literal: true

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

  context 'via setter' do
    let(:instance) { klass.new }

    before { instance.foo = 123 }

    it { is_expected.to be_valid }
    it { is_expected.to have_hash foo: 123 }
    it { is_expected.to have_attributes foo: 123 }
  end

  context 'inheritance' do
    let(:klass) do
      superklass = super()
      stub_const 'Ansible::Ruby::TestModelBase', superklass
      puts "super is #{superklass.attr_options} #{superklass}"
      Class.new(superklass)
    end

    let(:instance) { klass.new foo: 123 }

    it { is_expected.to be_valid }
    it { is_expected.to have_hash foo: 123 }
    it { is_expected.to have_attributes foo: 123 }
  end

  context 'generic' do
    let(:klass) do
      Class.new(Ansible::Ruby::Models::Base) do
        attribute :foo
        validates :foo, type: TypeGeneric.new(Integer)
      end
    end

    context 'single value' do
      context 'on its own' do
        let(:instance) { klass.new foo: 123 }

        it { is_expected.to be_valid }
        it { is_expected.to have_hash foo: [123] }
        it { is_expected.to have_attributes foo: 123 }
      end

      context 'in array' do
        let(:instance) { klass.new foo: [123] }

        it { is_expected.to be_valid }
        it { is_expected.to have_hash foo: [123] }
        it { is_expected.to have_attributes foo: [123] }
      end
    end

    context 'multiple values' do
      let(:instance) { klass.new foo: [123, 456] }

      it { is_expected.to be_valid }
      it { is_expected.to have_hash foo: [123, 456] }
      it { is_expected.to have_attributes foo: [123, 456] }
    end
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
