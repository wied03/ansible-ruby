require 'ansible/ruby/base_model'
require 'ansible/ruby/task'

module Ansible
  module Ruby
    class Play < BaseModel
      attribute :hosts
      validates :hosts, presence: true, type: TypeGeneric.new(String)
      attribute :name
      validates :name, type: String
      attribute :tasks
      validates :tasks, type: TypeGeneric.new(Ansible::Ruby::Task)
      attribute :roles
      validates :roles, type: TypeGeneric.new(String)
      attribute :connection
      validates :connection,
                allow_nil: true,
                inclusion: { in: [:local, :docker, :ssh], message: '%{value} needs to be :local, :docker, or :ssh' }
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
        tasks = result.delete :tasks
        roles = result.delete :roles
        name = result.delete :name
        # Be consistent with Ansible order
        new_result = {
          hosts: [*hosts].join(':'), # Ansible doesn't specify this as an array
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
      end
    end
  end
end
