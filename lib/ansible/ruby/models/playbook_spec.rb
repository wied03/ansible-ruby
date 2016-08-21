require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::Models::Playbook do
  before do
    stub_const('Ansible::Ruby::Modules::Ec2', module_klass)
  end

  let(:module_klass) do
    Class.new(Ansible::Ruby::Modules::Base) do
      attribute :foo
      validates :foo, presence: true
    end
  end

  let(:task) do
    Ansible::Ruby::Models::Task.new name: 'do stuff on EC2',
                                    module: module_klass.new(foo: 123)
  end

  pending 'write this'
end
