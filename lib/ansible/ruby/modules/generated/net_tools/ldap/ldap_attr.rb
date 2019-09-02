# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove LDAP attribute values.
      class Ldap_attr < Base
        # @return [String] The name of the attribute to modify.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, :exact, nil] The state of the attribute values. If C(present), all given values will be added if they're missing. If C(absent), all given values will be removed if present. If C(exact), the set of values will be forced to exactly those provided and no others. If I(state=exact) and I(value) is an empty list, all values for this attribute will be removed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :exact], :message=>"%{value} needs to be :present, :absent, :exact"}, allow_nil: true

        # @return [Array<String>, String] The value(s) to add or remove. This can be a string or a list of strings. The complex argument format is required in order to pass a list of strings (see examples).
        attribute :values
        validates :values, presence: true, type: TypeGeneric.new(String, NilClass)
      end
    end
  end
end
