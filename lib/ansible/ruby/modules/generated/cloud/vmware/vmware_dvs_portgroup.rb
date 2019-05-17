# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or remove a Distributed vSwitch portgroup.
      class Vmware_dvs_portgroup < Base
        # @return [String] The name of the portgroup that is to be created or deleted.
        attribute :portgroup_name
        validates :portgroup_name, presence: true, type: String

        # @return [String] The name of the distributed vSwitch the port group should be created on.
        attribute :switch_name
        validates :switch_name, presence: true, type: String

        # @return [Integer, String] The VLAN ID that should be configured with the portgroup, use 0 for no VLAN.,If C(vlan_trunk) is configured to be I(true), this can be a range, example: 1-4094.
        attribute :vlan_id
        validates :vlan_id, presence: true, type: MultipleTypes.new(Integer, String)

        # @return [Integer] The number of ports the portgroup should contain.
        attribute :num_ports
        validates :num_ports, presence: true, type: Integer

        # @return [:earlyBinding, :lateBinding, :ephemeral] See VMware KB 1022312 regarding portgroup types.
        attribute :portgroup_type
        validates :portgroup_type, presence: true, inclusion: {:in=>[:earlyBinding, :lateBinding, :ephemeral], :message=>"%{value} needs to be :earlyBinding, :lateBinding, :ephemeral"}

        # @return [:present, :absent] Determines if the portgroup should be present or not.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Symbol, nil] Indicates whether this is a VLAN trunk or not.
        attribute :vlan_trunk
        validates :vlan_trunk, type: Symbol

        # @return [Array<String>, String, nil] Dictionary which configures the different security values for portgroup.,Valid attributes are:,- C(promiscuous) (bool): indicates whether promiscuous mode is allowed. (default: false),- C(forged_transmits) (bool): indicates whether forged transmits are allowed. (default: false),- C(mac_changes) (bool): indicates whether mac changes are allowed. (default: false)
        attribute :network_policy
        validates :network_policy, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] Dictionary which configures the different teaming values for portgroup.,Valid attributes are:,- C(load_balance_policy) (string): Network adapter teaming policy. (default: loadbalance_srcid),   - choices: [ loadbalance_ip, loadbalance_srcmac, loadbalance_srcid, loadbalance_loadbased, failover_explicit],   - "loadbalance_loadbased" is available from version 2.6 and onwards,- C(inbound_policy) (bool): Indicate whether or not the teaming policy is applied to inbound frames as well. (default: False),- C(notify_switches) (bool): Indicate whether or not to notify the physical switch if a link fails. (default: True),- C(rolling_order) (bool): Indicate whether or not to use a rolling policy when restoring links. (default: False)
        attribute :teaming_policy
        validates :teaming_policy, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] Dictionary which configures the advanced policy settings for the portgroup.,Valid attributes are:,- C(block_override) (bool): indicates if the block policy can be changed per port. (default: true),- C(ipfix_override) (bool): indicates if the ipfix policy can be changed per port. (default: false),- C(live_port_move) (bool): indicates if a live port can be moved in or out of the portgroup. (default: false),- C(network_rp_override) (bool): indicates if the network resource pool can be changed per port. (default: false),- C(port_config_reset_at_disconnect) (bool): indicates if the configuration of a port is reset automatically after disconnect. (default: true),- C(security_override) (bool): indicates if the security policy can be changed per port. (default: false),- C(shaping_override) (bool): indicates if the shaping policy can be changed per port. (default: false),- C(traffic_filter_override) (bool): indicates if the traffic filter can be changed per port. (default: false),- C(uplink_teaming_override) (bool): indicates if the uplink teaming policy can be changed per port. (default: false),- C(vendor_config_override) (bool): indicates if the vendor config can be changed per port. (default: false),- C(vlan_override) (bool): indicates if the vlan can be changed per port. (default: false)
        attribute :port_policy
        validates :port_policy, type: TypeGeneric.new(String)
      end
    end
  end
end
