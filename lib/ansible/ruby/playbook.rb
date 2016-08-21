require 'ansible/ruby/basic_unit'
require 'ansible/ruby/task'

module Ansible
  module Ruby
    class Playbook < BasicUnit
      attribute :hosts, required: true, type: Array
      attribute :tasks, type: [Array, Ansible::Ruby::Task]
      attribute :roles, type: Array
      attribute :connection, choices: [:local, :docker, :ssh]
      attribute :user, type: String
      attribute :serial, type: Integer
      attribute :gather_facts, type: [TrueClass, FalseClass]

      def to_h
        result = super
        hosts = result.delete 'hosts'
        tasks = result.delete 'tasks'
        # Be consistent with Ansible order
        new_result = {
          'hosts' => hosts.join(':'), # Ansible doesn't specify this as an array
          'tasks' => tasks.is_a?(Array) ? tasks : [tasks] # ensure we have an array
        }
        result.each do |key, value|
          new_result[key] = value
        end
        new_result
      end
    end
  end
end
