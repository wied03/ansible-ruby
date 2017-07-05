# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove LDAP attribute values.
      class Ldap_attr < Base
        # @return [Array<String>, String, nil] A DN to bind with. If this is omitted, we'll try a SASL bind with the EXTERNAL mechanism. If this is blank, we'll use an anonymous bind.
        attribute :bind_dn
        validates :bind_dn, type: TypeGeneric.new(String)

        # @return [String, nil] The password to use with I(bind_dn).
        attribute :bind_pw
        validates :bind_pw, type: String

        # @return [Array<String>, String] The DN of the entry to modify.
        attribute :dn
        validates :dn, presence: true, type: TypeGeneric.new(String)

        # @return [String] The name of the attribute to modify.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] A URI to the LDAP server. The default value lets the underlying LDAP client library look for a UNIX domain socket in its default location.
        attribute :server_uri
        validates :server_uri, type: String

        # @return [:yes, :no, nil] If true, we'll use the START_TLS LDAP extension.
        attribute :start_tls
        validates :start_tls, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent, :exact, nil] The state of the attribute values. If C(present), all given values will be added if they're missing. If C(absent), all given values will be removed if present. If C(exact), the set of values will be forced to exactly those provided and no others. If I(state=exact) and I(value) is empty, all values for this attribute will be removed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :exact], :message=>"%{value} needs to be :present, :absent, :exact"}, allow_nil: true

        # @return [Array<String>, String] The value(s) to add or remove. This can be a string or a list of strings. The complex argument format is required in order to pass a list of strings (see examples).
        attribute :values
        validates :values, presence: true, type: TypeGeneric.new(String)
      end
    end
  end
end
