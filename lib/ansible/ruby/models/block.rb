# frozen_string_literal: true
# see LICENSE.txt in project root

require 'ansible/ruby/models/unit'

module Ansible
  module Ruby
    module Models
      class Block < Unit
        attribute :tasks
        validates :tasks, type: TypeGeneric.new(Task)
        validate :enough_tasks

        def to_h
          # we put the list of tasks directly under the block in Ansible
          result = super
          tasks = result.delete :tasks
          { block: tasks }.merge result
        end

        private

        def enough_tasks
          errors.add :tasks, 'Must have at least 1 task in your block!' unless tasks.any?
        end
      end
    end
  end
end
