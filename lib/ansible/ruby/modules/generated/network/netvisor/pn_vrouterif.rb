# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Execute vrouter-interface-add, vrouter-interface-remove, vrouter-interface-modify command.
      # You configure interfaces to vRouter services on a fabric, cluster, standalone switch or virtual network(VNET).
      class Pn_vrouterif < Base
        # @return [String, nil] Provide login username if user is not root.
        attribute :pn_cliusername
        validates :pn_cliusername, type: String

        # @return [String, nil] Provide login password if user is not root.
        attribute :pn_clipassword
        validates :pn_clipassword, type: String

        # @return [Object, nil] Target switch to run the cli on.
        attribute :pn_cliswitch

        # @return [:present, :absent, :update] State the action to perform. Use 'present' to add vrouter interface, 'absent' to remove vrouter interface and 'update' to modify vrouter interface.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :update], :message=>"%{value} needs to be :present, :absent, :update"}

        # @return [String] Specify the name of the vRouter interface.
        attribute :pn_vrouter_name
        validates :pn_vrouter_name, presence: true, type: String

        # @return [Integer, nil] Specify the VLAN identifier. This is a value between 1 and 4092.
        attribute :pn_vlan
        validates :pn_vlan, type: Integer

        # @return [String, nil] Specify the IP address of the interface in x.x.x.x/n format.
        attribute :pn_interface_ip
        validates :pn_interface_ip, type: String

        # @return [:none, :dhcp, :dhcpv6, :autov6, nil] Specify the DHCP method for IP address assignment.
        attribute :pn_assignment
        validates :pn_assignment, inclusion: {:in=>[:none, :dhcp, :dhcpv6, :autov6], :message=>"%{value} needs to be :none, :dhcp, :dhcpv6, :autov6"}, allow_nil: true

        # @return [Object, nil] Specify the VXLAN identifier. This is a value between 1 and 16777215.
        attribute :pn_vxlan

        # @return [:mgmt, :data, :span, nil] Specify if the interface is management, data or span interface.
        attribute :pn_interface
        validates :pn_interface, inclusion: {:in=>[:mgmt, :data, :span], :message=>"%{value} needs to be :mgmt, :data, :span"}, allow_nil: true

        # @return [Object, nil] Specify an alias for the interface.
        attribute :pn_alias

        # @return [Object, nil] Specify if the interface is exclusive to the configuration. Exclusive means that other configurations cannot use the interface. Exclusive is specified when you configure the interface as span interface and allows higher throughput through the interface.
        attribute :pn_exclusive

        # @return [Object, nil] Specify if the NIC is enabled or not
        attribute :pn_nic_enable

        # @return [Object, nil] Specify the ID for the VRRP interface. The IDs on both vRouters must be the same IS number.
        attribute :pn_vrrp_id

        # @return [Integer, nil] Specify the priority for the VRRP interface. This is a value between 1 (lowest) and 255 (highest).
        attribute :pn_vrrp_priority
        validates :pn_vrrp_priority, type: Integer

        # @return [Object, nil] Specify a VRRP advertisement interval in milliseconds. The range is from 30 to 40950 with a default value of 1000.
        attribute :pn_vrrp_adv_int

        # @return [Object, nil] Specify a Layer 3 port for the interface.
        attribute :pn_l3port

        # @return [Object, nil] Specify a secondary MAC address for the interface.
        attribute :pn_secondary_macs

        # @return [Object, nil] Specify the type of NIC. Used for vrouter-interface remove/modify.
        attribute :pn_nic_str
      end
    end
  end
end
