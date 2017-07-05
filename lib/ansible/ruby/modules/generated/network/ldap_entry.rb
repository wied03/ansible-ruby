# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove LDAP entries. This module only asserts the existence or non-existence of an LDAP entry, not its attributes. To assert the attribute values of an entry, see M(ldap_attr).
      class Ldap_entry < Base
        # @return [Array<String>, String, nil] A DN to bind with. If this is omitted, we'll try a SASL bind with the EXTERNAL mechanism. If this is blank, we'll use an anonymous bind.
        attribute :bind_dn
        validates :bind_dn, type: TypeGeneric.new(String)

        # @return [String, nil] The password to use with I(bind_dn).
        attribute :bind_pw
        validates :bind_pw, type: String

        # @return [Array<String>, String] The DN of the entry to add or remove.
        attribute :dn
        validates :dn, presence: true, type: TypeGeneric.new(String)

        # @return [Hash, nil] If I(state=present), attributes necessary to create an entry. Existing entries are never modified. To assert specific attribute values on an existing entry, use M(ldap_attr) module instead.
        attribute :attributes
        validates :attributes, type: Hash

        # @return [Array<String>, String, nil] If I(state=present), value or list of values to use when creating the entry. It can either be a string or an actual list of strings.
        attribute :objectClass
        validates :objectClass, type: TypeGeneric.new(String)

        # @return [String, nil] List of options which allows to overwrite any of the task or the I(attributes) options. To remove an option, set the value of the option to C(null).
        attribute :params
        validates :params, type: String

        # @return [String, nil] A URI to the LDAP server. The default value lets the underlying LDAP client library look for a UNIX domain socket in its default location.
        attribute :server_uri
        validates :server_uri, type: String

        # @return [:yes, :no, nil] If true, we'll use the START_TLS LDAP extension.
        attribute :start_tls
        validates :start_tls, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent, nil] The target state of the entry.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
