require 'ansible/ruby/models/base'
require 'ansible/ruby/models/task'
require 'ansible/ruby/models/block'
require 'ansible/ruby/models/inclusion'

module Ansible
  module Ruby
    module Models
      class Tasks < Base
        attribute :items
        validates :items, presence: true, type: TypeGeneric.new(Task, Block, Inclusion)

        def to_h
          # Don't need to return highest level
          super[:items]
        end
      end
    end
  end
end
