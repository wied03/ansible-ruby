# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows for management of SNMP settings for Meraki.
      class Meraki_snmp < Base
        # @return [:query, :present, nil] Specifies whether SNMP information should be queried or modified.
        attribute :state
        validates :state, inclusion: {:in=>[:query, :present], :message=>"%{value} needs to be :query, :present"}, allow_nil: true

        # @return [TrueClass, FalseClass, nil] Specifies whether SNMPv2c is enabled.
        attribute :v2c_enabled
        validates :v2c_enabled, type: MultipleTypes.new(TrueClass, FalseClass)

        # @return [Boolean, nil] Specifies whether SNMPv3 is enabled.
        attribute :v3_enabled
        validates :v3_enabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:MD5, :SHA, nil] Sets authentication mode for SNMPv3.
        attribute :v3_auth_mode
        validates :v3_auth_mode, inclusion: {:in=>[:MD5, :SHA], :message=>"%{value} needs to be :MD5, :SHA"}, allow_nil: true

        # @return [String, nil] Authentication password for SNMPv3.,Must be at least 8 characters long.
        attribute :v3_auth_pass
        validates :v3_auth_pass, type: String

        # @return [:DES, :AES128, nil] Specifies privacy mode for SNMPv3.
        attribute :v3_priv_mode
        validates :v3_priv_mode, inclusion: {:in=>[:DES, :AES128], :message=>"%{value} needs to be :DES, :AES128"}, allow_nil: true

        # @return [String, nil] Privacy password for SNMPv3.,Must be at least 8 characters long.
        attribute :v3_priv_pass
        validates :v3_priv_pass, type: String

        # @return [String, nil] Semi-colon delimited IP addresses which can perform SNMP queries.
        attribute :peer_ips
        validates :peer_ips, type: String
      end
    end
  end
end
