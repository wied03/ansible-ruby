# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages SNMP target host configurations on HUAWEI CloudEngine switches.
      class Ce_snmp_target_host < Base
        # @return [:none, :v1, :v2c, :v3, :v1v2c, :v1v3, :v2cv3, :all, nil] Version(s) Supported by SNMP Engine.
        attribute :version
        validates :version, expression_inclusion: {:in=>[:none, :v1, :v2c, :v3, :v1v2c, :v1v3, :v2cv3, :all], :message=>"%{value} needs to be :none, :v1, :v2c, :v3, :v1v2c, :v1v3, :v2cv3, :all"}, allow_nil: true

        # @return [Object, nil] Udp port used by SNMP agent to connect the Network management.
        attribute :connect_port

        # @return [Object, nil] Unique name to identify target host entry.
        attribute :host_name

        # @return [Object, nil] Network Address.
        attribute :address

        # @return [:trap, :inform, nil] To configure notify type as trap or inform.
        attribute :notify_type
        validates :notify_type, expression_inclusion: {:in=>[:trap, :inform], :message=>"%{value} needs to be :trap, :inform"}, allow_nil: true

        # @return [Object, nil] VPN instance Name.
        attribute :vpn_name

        # @return [Object, nil] UDP Port number used by network management to receive alarm messages.
        attribute :recv_port

        # @return [:v1, :v2c, :v3, nil] Security Model.
        attribute :security_model
        validates :security_model, expression_inclusion: {:in=>[:v1, :v2c, :v3], :message=>"%{value} needs to be :v1, :v2c, :v3"}, allow_nil: true

        # @return [Object, nil] Security Name.
        attribute :security_name

        # @return [Object, nil] Security Name V3.
        attribute :security_name_v3

        # @return [:noAuthNoPriv, :authentication, :privacy, nil] Security level indicating whether to use authentication and encryption.
        attribute :security_level
        validates :security_level, expression_inclusion: {:in=>[:noAuthNoPriv, :authentication, :privacy], :message=>"%{value} needs to be :noAuthNoPriv, :authentication, :privacy"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] To enable or disable Public Net-manager for target Host.
        attribute :is_public_net
        validates :is_public_net, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] Name of the interface to send the trap message.
        attribute :interface_name
      end
    end
  end
end
