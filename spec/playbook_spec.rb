require 'spec_helper'
require 'ansible-ruby'

describe Ansible::Ruby::Playbook do
  before do
    stub_const('Ansible::Ruby::Modules::Ec2', module_klass)
  end

  let(:module_klass) do
    Class.new(Ansible::Ruby::Modules::Base) do
      attribute :foo, required: true
    end
  end

  let(:task) { Ansible::Ruby::Task.new name: 'do stuff on EC2',
                                       module: module_klass.new(foo: 123) }

  subject(:hash) { instance.to_h }

  context 'basic' do
    let(:instance) { Ansible::Ruby::Playbook.new tasks: [task],
                                                 hosts: %w(host1 host2) }

    it do
      is_expected.to eq({
                          'hosts' => 'host1:host2',
                          'tasks' => [
                            {
                              'name' => 'do stuff on EC2',
                              'ec2' => {
                                'foo' => 123
                              }
                            }
                          ]
                        })
    end
  end

  context 'single host' do
    let(:instance) { Ansible::Ruby::Playbook.new tasks: [task],
                                                 hosts: 'host1' }

    it do
      is_expected.to eq({
                          'hosts' => 'host1',
                          'tasks' => [
                            {
                              'name' => 'do stuff on EC2',
                              'ec2' => {
                                'foo' => 123
                              }
                            }
                          ]
                        })
    end
  end

  context 'tasks and roles' do
    subject do
      lambda do
        Ansible::Ruby::Playbook.new tasks: [task],
                                    hosts: 'host1',
                                    roles: 'role1'
      end
    end

    it { is_expected.to raise_error 'Cannot supply both tasks and roles!' }
  end

  context 'roles only' do
    pending 'write this'
  end
end
