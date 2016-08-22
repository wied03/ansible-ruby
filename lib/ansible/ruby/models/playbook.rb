require 'ansible/ruby/models/base'

module Ansible
  module Ruby
    module Models
      class Playbook < Base
        attribute :plays
        validates :plays, presence: true, type: TypeGeneric.new(Play)

        def to_h
          # Don't need to return highest level
          super[:plays]
        end
      end
    end
  end
end
