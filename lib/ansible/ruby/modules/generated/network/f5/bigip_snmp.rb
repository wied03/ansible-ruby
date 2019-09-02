# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manipulate general SNMP settings on a BIG-IP.
      class Bigip_snmp < Base
        # @return [Object, nil] Configures the IP addresses of the SNMP clients from which the snmpd daemon accepts requests.,This value can be hostnames, IP addresses, or IP networks.,You may specify a single list item of C(default) to set the value back to the system's default of C(127.0.0.0/8).,You can remove all allowed addresses by either providing the word C(none), or by providing the empty string C("").
        attribute :allowed_addresses

        # @return [String, nil] Specifies the name of the person who administers the SNMP service for this system.
        attribute :contact
        validates :contact, type: String

        # @return [:enabled, :disabled, nil] When C(enabled), ensures that the system sends a trap whenever the SNMP agent starts running or stops running. This is usually enabled by default on a BIG-IP.
        attribute :agent_status_traps
        validates :agent_status_traps, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:enabled, :disabled, nil] When C(enabled), ensures that the system sends authentication warning traps to the trap destinations. This is usually disabled by default on a BIG-IP.
        attribute :agent_authentication_traps
        validates :agent_authentication_traps, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:enabled, :disabled, nil] When C(enabled), ensures that the system sends device warning traps to the trap destinations. This is usually enabled by default on a BIG-IP.
        attribute :device_warning_traps
        validates :device_warning_traps, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [String, nil] Specifies the description of this system's physical location.
        attribute :location
        validates :location, type: String
      end
    end
  end
end
