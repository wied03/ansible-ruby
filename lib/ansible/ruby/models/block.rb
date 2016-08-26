# see LICENSE.txt in project root

require 'ansible/ruby/models/unit'

module Ansible
  module Ruby
    module Models
      class Block < Unit
        attribute :tasks
        validates :tasks, type: TypeGeneric.new(Task)
      end
    end
  end
end
