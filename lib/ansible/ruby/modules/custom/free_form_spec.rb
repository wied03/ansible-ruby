# See LICENSE.txt for license

require 'spec_helper'
require 'ansible/ruby/modules/custom/free_form'

describe Ansible::Ruby::Modules::FreeForm do
  before { stub_const 'Ansible::Ruby::Modules::SomeModule', klass }

  subject { instance }

  let(:klass) do
    Class.new(Ansible::Ruby::Modules::Base) do
      attribute :free_form
      validates :free_form, presence: true
      attribute :foo
    end
  end

  before do
    # simulate monkey patching existing
    klass.class_eval do
      include Ansible::Ruby::Modules::FreeForm
    end
  end

  describe 'validation' do
    context 'missing required value' do
      let(:instance) { klass.new {} }

      it { is_expected.to_not be_valid }
      it { is_expected.to have_errors free_form: 'Argument directly after some_module e.g. some_module(arg) cannot be blank' }
    end

    context 'not string' do
      let(:instance) { klass.new free_form: 123 }

      it { is_expected.to_not be_valid }
      it { is_expected.to have_errors free_form: 'some_module(123), 123 is expected to be a String but was a Fixnum' }
    end

    context 'valid' do
      let(:instance) { klass.new free_form: 'howdy' }

      it { is_expected.to be_valid }
    end
  end

  describe '#to_h' do
    subject { instance.to_h }

    context 'args' do
      let(:instance) { klass.new free_form: 'howdy', foo: 123 }

      it do
        is_expected.to eq(some_module: 'howdy',
                          args: {
                            foo: 123
                          })
      end
    end

    context 'no args' do
      let(:instance) { klass.new free_form: 'howdy' }

      it do
        is_expected.to eq(some_module: 'howdy')
      end
    end
  end
end
