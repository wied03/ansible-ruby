# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vmware_vmkernel < Base
        # @return [String] The name of the vswitch where to add the VMK interface
        attribute :vswitch_name
        validates :vswitch_name, presence: true, type: String

        # @return [String] The name of the portgroup for the VMK interface
        attribute :portgroup_name
        validates :portgroup_name, presence: true, type: String

        # @return [String] The IP Address for the VMK interface
        attribute :ip_address
        validates :ip_address, presence: true, type: String

        # @return [String] The Subnet Mask for the VMK interface
        attribute :subnet_mask
        validates :subnet_mask, presence: true, type: String

        # @return [Object] The VLAN ID for the VMK interface
        attribute :vland_id
        validates :vland_id, presence: true

        # @return [Object, nil] The MTU for the VMK interface
        attribute :mtu

        # @return [Object, nil] Enable the VMK interface for VSAN traffic
        attribute :enable_vsan

        # @return [Object, nil] Enable the VMK interface for vMotion traffic
        attribute :enable_vmotion

        # @return [TrueClass, nil] Enable the VMK interface for Management traffic
        attribute :enable_mgmt
        validates :enable_mgmt, type: TrueClass

        # @return [Object, nil] Enable the VMK interface for Fault Tolerance traffic
        attribute :enable_ft
      end
    end
  end
end
