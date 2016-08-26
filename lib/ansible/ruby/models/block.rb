# see LICENSE.txt in project root

require 'ansible/ruby/models/unit'

module Ansible
  module Ruby
    module Models
      class Block < Unit
        attribute :tasks
        validates :tasks, type: TypeGeneric.new(Task)
        validate :enough_tasks

        private

        def enough_tasks
          errors.add :tasks, 'Must have at least 1 task in your block!' unless tasks.any?
        end
      end
    end
  end
end
