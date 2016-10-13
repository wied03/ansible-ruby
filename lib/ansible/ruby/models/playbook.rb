require 'ansible/ruby/models/base'

module Ansible
  module Ruby
    module Models
      class Playbook < Base
        attribute :plays
        validates :plays, presence: true, type: TypeGeneric.new(Play)
        attribute :inclusions
        validates :inclusions, type: TypeGeneric.new(Inclusion)

        def to_h
          super_result = super
          # Don't need to return highest level
          super_result[:plays] + (super_result[:inclusions] || [])
        end
      end
    end
  end
end
