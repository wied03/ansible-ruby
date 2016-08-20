require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::BasicUnit do
  before { stub_const('EC2', klass) }
  subject { instance.to_h }

  context 'basic attributes' do
    let(:klass) do
      Class.new(Ansible::Ruby::BasicUnit) do
        attribute :foo, required: true
        attribute :bar, default: nil
      end
    end

    context 'valid' do
      let(:instance) { klass.new foo: 123 }

      it { is_expected.to eq({ ec2: { foo: 123 }}) }
    end

    context 'missing attribute' do
      pending 'write this'
    end
  end

  context 'conflicting values' do
    pending 'write this'
  end
  pending 'write this'
end
