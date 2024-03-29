# frozen_string_literal: true

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

  let(:tasks_model) { Ansible::Ruby::Models::Tasks.new items: task_array }
  let(:task_array) { [task] }

  let(:task) do
    Ansible::Ruby::Models::Task.new name: 'do stuff on EC2',
                                    module: module_klass.new(foo: 123)
  end

  let(:play1) do
    Ansible::Ruby::Models::Play.new tasks: tasks_model,
                                    name: 'play 1',
                                    hosts: %w[host1 host2]
  end

  let(:play2) do
    Ansible::Ruby::Models::Play.new tasks: tasks_model,
                                    name: 'play 2',
                                    hosts: 'host3'
  end

  subject(:hash) { instance.to_h }

  context 'basic' do
    let(:instance) do
      Ansible::Ruby::Models::Playbook.new plays: [play1, play2]
    end

    it do
      is_expected.to eq [
        {
          hosts: 'host1:host2',
          name: 'play 1',
          tasks: [
            {
              name: 'do stuff on EC2',
              ec2: {
                foo: 123
              }
            }
          ]
        },
        {
          hosts: 'host3',
          name: 'play 2',
          tasks: [
            {
              name: 'do stuff on EC2',
              ec2: {
                foo: 123
              }
            }
          ]
        }
      ]
    end
  end

  context 'includes' do
    let(:instance) do
      Ansible::Ruby::Models::Playbook.new plays: [play1],
                                          inclusions: [Ansible::Ruby::Models::Inclusion.new(file: 'something.yml')]
    end

    it do
      is_expected.to eq [
        {
          hosts: 'host1:host2',
          name: 'play 1',
          tasks: [
            {
              name: 'do stuff on EC2',
              ec2: {
                foo: 123
              }
            }
          ]
        },
        {
          include: 'something.yml'
        }
      ]
    end
  end

  context 'no plays' do
    let(:instance) do
      Ansible::Ruby::Models::Playbook.new
    end

    it 'should raise an error' do
      expect {instance.to_h}.to raise_error  "Validation failed: Plays can't be blank"
    end
  end

  context 'empty plays' do
    let(:instance) do
      Ansible::Ruby::Models::Playbook.new plays: []
    end

    it 'should raise an error' do
      expect {instance.to_h}.to raise_error "Validation failed: Plays can't be blank"
    end
  end
end
