require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::BasicUnit do
  before { stub_const('EC2', klass) }
  subject { instance.to_h }

  context 'basic attributes' do
    let(:klass) do
      Class.new(Ansible::Ruby::BasicUnit) do
        attribute :foo, required: true
        attribute :bar
      end
    end

    context 'valid' do
      let(:instance) { klass.new foo: 123 }

      it { is_expected.to eq({ 'ec2' => { 'foo' => 123 } }) }
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
end
