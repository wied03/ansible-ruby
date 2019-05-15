# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create a VMware portgroup on given host/s or hosts of given cluster
      class Vmware_portgroup < Base
        # @return [String] vSwitch to modify.
        attribute :switch_name
        validates :switch_name, presence: true, type: String

        # @return [String] Portgroup name to add.
        attribute :portgroup_name
        validates :portgroup_name, presence: true, type: String

        # @return [String] VLAN ID to assign to portgroup.
        attribute :vlan_id
        validates :vlan_id, presence: true, type: String

        # @return [Array<String>, String, nil] Network policy specifies layer 2 security settings for a portgroup such as promiscuous mode, where guest adapter listens to all the packets, MAC address changes and forged transmits.,Dict which configures the different security values for portgroup.,Valid attributes are:,- C(promiscuous_mode) (bool): indicates whether promiscuous mode is allowed. (default: false),- C(forged_transmits) (bool): indicates whether forged transmits are allowed. (default: false),- C(mac_changes) (bool): indicates whether mac changes are allowed. (default: false)
        attribute :network_policy
        validates :network_policy, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] Dictionary which configures the different teaming values for portgroup.,Valid attributes are:,- C(load_balance_policy) (string): Network adapter teaming policy. (default: loadbalance_srcid),   - choices: [ loadbalance_ip, loadbalance_srcmac, loadbalance_srcid, failover_explicit ],- C(inbound_policy) (bool): Indicate whether or not the teaming policy is applied to inbound frames as well. (default: False),- C(notify_switches) (bool): Indicate whether or not to notify the physical switch if a link fails. (default: True),- C(rolling_order) (bool): Indicate whether or not to use a rolling policy when restoring links. (default: False)
        attribute :teaming_policy
        validates :teaming_policy, type: TypeGeneric.new(String)

        # @return [String, nil] Name of cluster name for host membership.,Portgroup will be created on all hosts of the given cluster.,This option is required if C(hosts) is not specified.
        attribute :cluster_name
        validates :cluster_name, type: String

        # @return [Array<String>, String, nil] List of name of host or hosts on which portgroup needs to be added.,This option is required if C(cluster_name) is not specified.
        attribute :hosts
        validates :hosts, type: TypeGeneric.new(String)

        # @return [:present, :absent, nil] Determines if the portgroup should be present or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
