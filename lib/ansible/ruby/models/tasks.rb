require 'ansible/ruby/models/base'

module Ansible
  module Ruby
    module Models
      class Tasks < Base
        attribute :tasks
        validates :tasks, presence: true, type: TypeGeneric.new(Task)

        def to_h
          # Don't need to return highest level
          super[:tasks]
        end
      end
    end
  end
end
