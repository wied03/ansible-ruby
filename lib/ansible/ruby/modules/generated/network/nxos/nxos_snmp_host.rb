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

        # @return [:v2c, :v3, nil] SNMP version.
        attribute :version
        validates :version, inclusion: {:in=>[:v2c, :v3], :message=>"%{value} needs to be :v2c, :v3"}, allow_nil: true

        # @return [String, nil] Community string or v3 username.
        attribute :community
        validates :community, type: String

        # @return [Object, nil] UDP port number (0-65535).
        attribute :udp

        # @return [:trap, :inform, nil] type of message to send to host.
        attribute :type
        validates :type, inclusion: {:in=>[:trap, :inform], :message=>"%{value} needs to be :trap, :inform"}, allow_nil: true

        # @return [Object, nil] VRF to use to source traffic to source.
        attribute :vrf

        # @return [Object, nil] Name of VRF to filter.
        attribute :vrf_filter

        # @return [Object, nil] Source interface.
        attribute :src_intf

        # @return [:present, :absent] Manage the state of the resource.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}
      end
    end
  end
end
