# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create a VMware portgroup
      class Vmware_portgroup < Base
        # @return [String] vSwitch to modify
        attribute :switch_name
        validates :switch_name, presence: true, type: String

        # @return [String] Portgroup name to add
        attribute :portgroup_name
        validates :portgroup_name, presence: true, type: String

        # @return [String] VLAN ID to assign to portgroup
        attribute :vlan_id
        validates :vlan_id, presence: true, type: String

        # @return [Hash, nil] Network policy specifies layer 2 security settings for a portgroup such as promiscuous mode, where guest adapter listens to all the packets, MAC address changes and forged transmits. Settings are promiscuous_mode, forged_transmits, mac_changes
        attribute :network_policy
        validates :network_policy, type: Hash
      end
    end
  end
end
