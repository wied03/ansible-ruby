# frozen_string_literal: true
# see LICENSE.txt in project root
module Ansible
  module Ruby
    module Models
      class Unit < Base
        attribute :register
        validates :register, type: String
        attribute :become
        validates :become, type: MultipleTypes.new(TrueClass, FalseClass)
        attribute :become_user
        validates :become_user, type: String
        attribute :when
        validates :when, type: String
        attribute :ignore_errors
        validates :ignore_errors, type: MultipleTypes.new(TrueClass, FalseClass)
        attribute :vars
        validates :vars, type: Hash

        def to_h
          result = super
          notify = result.delete :notify
          result[:notify] = [*notify] if notify
          result
        end
      end
    end
  end
end
