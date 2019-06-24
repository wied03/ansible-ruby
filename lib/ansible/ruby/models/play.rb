# frozen_string_literal: true

require 'ansible/ruby/models/base'
require 'ansible/ruby/models/tasks'

module Ansible
  module Ruby
    module Models
      class Play < Base
        attribute :hosts
        validates :hosts, presence: true, type: TypeGeneric.new(String)
        attribute :vars
        validates :vars, type: Hash
        attribute :become
        validates :become, type: MultipleTypes.new(TrueClass, FalseClass)
        attribute :become_user
        validates :become_user, type: String
        attribute :ignore_errors
        validates :ignore_errors, type: MultipleTypes.new(TrueClass, FalseClass)
        attribute :no_log
        validates :no_log, type: MultipleTypes.new(TrueClass, FalseClass)
        attribute :name
        validates :name, type: String
        attribute :tasks
        validates :tasks, type: Tasks
        attribute :roles
        attribute :connection
        validates :connection,
                  allow_nil: true,
                  inclusion: { in: %i[local docker ssh], message: '%{value} needs to be :local, :docker, or :ssh' }
        attribute :user
        validates :user, type: String
        attribute :serial
        validates :serial, type: Integer
        attribute :gather_facts
        validates :gather_facts, type: MultipleTypes.new(TrueClass, FalseClass)
        validate :validate_roles_tasks

        def to_h
          result = super
          hosts = result.delete :hosts
          tasks = result.delete :items
          roles = result.delete :roles
          name = result.delete :name
          # Be consistent with Ansible order
          new_result = {
            hosts: [*hosts].join(':') # Ansible doesn't specify this as an array
          }
          new_result[:name] = name if name
          new_result[:tasks] = tasks.is_a?(Array) ? tasks : [tasks] if tasks # ensure we have an array
          new_result[:roles] = [*roles] if roles # ensure we have an array
          result.each do |key, value|
            new_result[key] = value
          end
          new_result
        end

        private

        def validate_roles_tasks
          errors.add :tasks, 'Cannot supply both tasks and roles!' if roles && tasks
          errors.add :tasks, 'Must supply either task(s) or role(s)!' unless roles || tasks
        end
      end
    end
  end
end
