require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::Task do
  before do
    stub_const('Ansible::Ruby::Modules::Ec2', module_klass)
  end

  let(:module_klass) do
    Class.new(Ansible::Ruby::BasicUnit) do
      attribute :foo, required: true
      attribute :bar
    end
  end

  subject { instance.to_h }

  context 'basic' do
    let(:instance) { Ansible::Ruby::Task.new module: module_klass.new(foo: 123) }

    pending 'write this'
  end

  context 'register' do
    pending 'write this'
  end
end
