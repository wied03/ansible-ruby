# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to manage the VMWare VMKernel interface (also known as Virtual NICs) of host system.
      # This module assumes that the host is already configured with Portgroup and vSwitch.
      class Vmware_vmkernel < Base
        # @return [String, nil] The name of the vSwitch where to add the VMKernel interface.,Required parameter only if C(state) is set to C(present).,Optional parameter from version 2.5 and onwards.
        attribute :vswitch_name
        validates :vswitch_name, type: String

        # @return [String] The name of the port group for the VMKernel interface.
        attribute :portgroup_name
        validates :portgroup_name, presence: true, type: String

        # @return [Hash, nil] A dictionary of network details.,Following parameter is required:, - C(type) (string): Type of IP assignment (either C(dhcp) or C(static)).,Following parameters are required in case of C(type) is set to C(static), - C(ip_address) (string): Static IP address (implies C(type: static))., - C(subnet_mask) (string): Static netmask required for C(ip).
        attribute :network
        validates :network, type: Hash

        # @return [Object, nil] The IP Address for the VMKernel interface.,Use C(network) parameter with C(ip_address) instead.,Deprecated option, will be removed in version 2.9.
        attribute :ip_address

        # @return [Object, nil] The Subnet Mask for the VMKernel interface.,Use C(network) parameter with C(subnet_mask) instead.,Deprecated option, will be removed in version 2.9.
        attribute :subnet_mask

        # @return [String, nil] The VLAN ID for the VMKernel interface.,Required parameter only if C(state) is set to C(present).,Optional parameter from version 2.5 and onwards.
        attribute :vlan_id
        validates :vlan_id, type: String

        # @return [Integer, nil] The MTU for the VMKernel interface.,The default value of 1500 is valid from version 2.5 and onwards.
        attribute :mtu
        validates :mtu, type: Integer

        # @return [Object, nil] Enable the VMKernel interface for VSAN traffic.
        attribute :enable_vsan

        # @return [Object, nil] Enable the VMKernel interface for vMotion traffic.
        attribute :enable_vmotion

        # @return [Boolean, nil] Enable the VMKernel interface for Management traffic.
        attribute :enable_mgmt
        validates :enable_mgmt, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Enable the VMKernel interface for Fault Tolerance traffic.
        attribute :enable_ft

        # @return [:present, :absent, nil] If set to C(present), VMKernel is created with the given specifications.,If set to C(absent), VMKernel is removed from the given configurations.,If set to C(present) and VMKernel exists then VMKernel configurations are updated.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] Name of ESXi host to which VMKernel is to be managed.,From version 2.5 onwards, this parameter is required.
        attribute :esxi_hostname
        validates :esxi_hostname, presence: true
      end
    end
  end
end
