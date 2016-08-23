# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ec2_eip < Base
        # @return [String] The id of the device for the EIP. Can be an EC2 Instance id or Elastic Network Interface (ENI) id.
        attribute :device_id
        validates :device_id, type: String

        # @return [Object] The elastic IP address to associate with the instance.,If absent, allocate a new address
        attribute :public_ip

        # @return [String] If present, associate the IP with the instance.,If absent, disassociate the IP with the instance.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] allocate an EIP inside a VPC or not
        attribute :in_vpc

        # @return [Object] Reuse an EIP that is not associated to an instance (when available), instead of allocating a new one.
        attribute :reuse_existing_ip_allowed

        # @return [Object] whether or not to automatically release the EIP when it is disassociated
        attribute :release_on_disassociation
      end
    end
  end
end
