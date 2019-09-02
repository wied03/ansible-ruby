# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages SNMP host configuration parameters.
      class Nxos_snmp_host < Base
        # @return [String] IP address of hostname of target host.
        attribute :snmp_host
        validates :snmp_host, presence: true, type: String

        # @return [:v1, :v2c, :v3, nil] SNMP version. If this is not specified, v1 is used.
        attribute :version
        validates :version, expression_inclusion: {:in=>[:v1, :v2c, :v3], :message=>"%{value} needs to be :v1, :v2c, :v3"}, allow_nil: true

        # @return [:noauth, :auth, :priv, nil] Use this when verion is v3. SNMPv3 Security level.
        attribute :v3
        validates :v3, expression_inclusion: {:in=>[:noauth, :auth, :priv], :message=>"%{value} needs to be :noauth, :auth, :priv"}, allow_nil: true

        # @return [String, nil] Community string or v3 username.
        attribute :community
        validates :community, type: String

        # @return [Integer, nil] UDP port number (0-65535).
        attribute :udp
        validates :udp, type: Integer

        # @return [:trap, :inform, nil] type of message to send to host. If this is not specified, trap type is used.
        attribute :snmp_type
        validates :snmp_type, expression_inclusion: {:in=>[:trap, :inform], :message=>"%{value} needs to be :trap, :inform"}, allow_nil: true

        # @return [Object, nil] VRF to use to source traffic to source. If state = absent, the vrf is removed.
        attribute :vrf

        # @return [Object, nil] Name of VRF to filter. If state = absent, the vrf is removed from the filter.
        attribute :vrf_filter

        # @return [Object, nil] Source interface. Must be fully qualified interface name. If state = absent, the interface is removed.
        attribute :src_intf

        # @return [:present, :absent, nil] Manage the state of the resource. If state = present, the host is added to the configuration. If only vrf and/or vrf_filter and/or src_intf are given, they will be added to the existing host configuration. If state = absent, the host is removed if community parameter is given. It is possible to remove only vrf and/or src_int and/or vrf_filter by providing only those parameters and no community parameter.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
