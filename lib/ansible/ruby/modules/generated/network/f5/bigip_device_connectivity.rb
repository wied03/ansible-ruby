# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages device IP configuration settings for HA on a BIG-IP. Each BIG-IP device has synchronization and failover connectivity information (IP addresses) that you define as part of HA pairing or clustering. This module allows you to configure that information.
      class Bigip_device_connectivity < Base
        # @return [String, nil] Local IP address that the system uses for ConfigSync operations.
        attribute :config_sync_ip
        validates :config_sync_ip, type: String

        # @return [String, nil] Specifies the primary IP address for the system to use to mirror connections.
        attribute :mirror_primary_address
        validates :mirror_primary_address, type: String

        # @return [Object, nil] Specifies the secondary IP address for the system to use to mirror connections.
        attribute :mirror_secondary_address

        # @return [Array<Hash>, Hash, nil] Desired addresses to use for failover operations. Options C(address) and C(port) are supported with dictionary structure where C(address) is the local IP address that the system uses for failover operations. Port specifies the port that the system uses for failover operations. If C(port) is not specified, the default value C(1026) will be used.  If you are specifying the (recommended) management IP address, use 'management-ip' in the address field.
        attribute :unicast_failover
        validates :unicast_failover, type: TypeGeneric.new(Hash)

        # @return [Symbol, nil] When C(yes), ensures that the Failover Multicast configuration is enabled and if no further multicast configuration is provided, ensures that C(multicast_interface), C(multicast_address) and C(multicast_port) are the defaults specified in each option's description. When C(no), ensures that Failover Multicast configuration is disabled.
        attribute :failover_multicast
        validates :failover_multicast, type: Symbol

        # @return [Object, nil] Interface over which the system sends multicast messages associated with failover. When C(failover_multicast) is C(yes) and this option is not provided, a default of C(eth0) will be used.
        attribute :multicast_interface

        # @return [Object, nil] IP address for the system to send multicast messages associated with failover. When C(failover_multicast) is C(yes) and this option is not provided, a default of C(224.0.0.245) will be used.
        attribute :multicast_address

        # @return [Object, nil] Port for the system to send multicast messages associated with failover. When C(failover_multicast) is C(yes) and this option is not provided, a default of C(62960) will be used. This value must be between 0 and 65535.
        attribute :multicast_port

        # @return [:"between-clusters", :"within-cluster", nil] Specifies whether mirroring occurs within the same cluster or between different clusters on a multi-bladed system.,This parameter is only supported on platforms that have multiple blades, such as Viprion hardware. It is not supported on VE.
        attribute :cluster_mirroring
        validates :cluster_mirroring, expression_inclusion: {:in=>[:"between-clusters", :"within-cluster"], :message=>"%{value} needs to be :\"between-clusters\", :\"within-cluster\""}, allow_nil: true
      end
    end
  end
end
