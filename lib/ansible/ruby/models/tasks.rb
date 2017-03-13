# frozen_string_literal: true
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
        attribute :inclusions
        validates :inclusions, type: TypeGeneric.new(Inclusion)

        def to_h
          super_result = super
          # Don't need to return highest level
          (super_result[:inclusions] || []) + super_result[:items]
        end
      end
    end
  end
end
