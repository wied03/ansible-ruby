# see LICENSE.txt in project root

require 'ansible/ruby/models/handler'

module Ansible
  module Ruby
    module Models
      class Handlers < Base
        attribute :handlers
        validates :handlers, presence: true, type: TypeGeneric.new(Handler)

        def to_h
          # Don't need to return highest level
          super[:handlers]
        end
      end
    end
  end
end
