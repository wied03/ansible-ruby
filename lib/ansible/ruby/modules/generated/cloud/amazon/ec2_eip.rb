# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can allocate or release an EIP.
      # This module can associate/disassociate an EIP with instances or network interfaces.
      class Ec2_eip < Base
        # @return [String, nil] The id of the device for the EIP. Can be an EC2 Instance id or Elastic Network Interface (ENI) id.
        attribute :device_id
        validates :device_id, type: String

        # @return [Object, nil] The IP address of a previously allocated EIP.,If present and device is specified, the EIP is associated with the device.,If absent and device is specified, the EIP is disassociated from the device.
        attribute :public_ip

        # @return [:present, :absent, nil] If present, allocate an EIP or associate an existing EIP with a device.,If absent, disassociate the EIP from the device and optionally release it.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] allocate an EIP inside a VPC or not
        attribute :in_vpc
        validates :in_vpc, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Reuse an EIP that is not associated to a device (when available), instead of allocating a new one.
        attribute :reuse_existing_ip_allowed
        validates :reuse_existing_ip_allowed, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] whether or not to automatically release the EIP when it is disassociated
        attribute :release_on_disassociation
        validates :release_on_disassociation, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] The primary or secondary private IP address to associate with the Elastic IP address.
        attribute :private_ip_address
      end
    end
  end
end
