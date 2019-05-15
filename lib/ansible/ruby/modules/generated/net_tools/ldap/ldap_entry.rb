# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove LDAP entries. This module only asserts the existence or non-existence of an LDAP entry, not its attributes. To assert the attribute values of an entry, see M(ldap_attr).
      class Ldap_entry < Base
        # @return [Hash, nil] If I(state=present), attributes necessary to create an entry. Existing entries are never modified. To assert specific attribute values on an existing entry, use M(ldap_attr) module instead.
        attribute :attributes
        validates :attributes, type: Hash

        # @return [Array<String>, String, nil] If I(state=present), value or list of values to use when creating the entry. It can either be a string or an actual list of strings.
        attribute :objectClass
        validates :objectClass, type: TypeGeneric.new(String)

        # @return [String, nil] List of options which allows to overwrite any of the task or the I(attributes) options. To remove an option, set the value of the option to C(null).
        attribute :params
        validates :params, type: String

        # @return [:present, :absent, nil] The target state of the entry.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
