require 'ansible/ruby/base_model'
require 'ansible/ruby/task'

module Ansible
  module Ruby
    class Play < BaseModel
      attribute :hosts, required: true, type: [Array, String]
      attribute :name, type: String
      attribute :tasks, type: [Array, Ansible::Ruby::Task]
      attribute :roles, type: [Array, String]
      attribute :connection, choices: [:local, :docker, :ssh]
      attribute :user, type: String
      attribute :serial, type: Integer
      attribute :gather_facts, type: [TrueClass, FalseClass]

      def to_h
        result = super
        hosts = result.delete 'hosts'
        tasks = result.delete 'tasks'
        roles = result.delete 'roles'
        name = result.delete 'name'
        # Be consistent with Ansible order
        new_result = {
          'hosts' => [*hosts].join(':'), # Ansible doesn't specify this as an array
        }
        new_result['name'] = name if name
        new_result['tasks'] = tasks.is_a?(Array) ? tasks : [tasks] if tasks # ensure we have an array
        new_result['roles'] = [*roles] if roles # ensure we have an array
        result.each do |key, value|
          new_result[key] = value
        end
        new_result
      end

      private

      def validate(args)
        super
        raise 'Cannot supply both tasks and roles!' if args[:roles] && args[:tasks]
      end
    end
  end
end
