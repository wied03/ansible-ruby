# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ec2_eni < Base
        # @return [Hash] The ID of the ENI
        attribute :eni_id
        validates :eni_id, type: Hash

        # @return [String] Instance ID that you wish to attach ENI to. To detach an ENI from an instance, use 'None'.
        attribute :instance_id
        validates :instance_id, type: String

        # @return [String] Private IP address.
        attribute :private_ip_address
        validates :private_ip_address, type: String

        # @return [String] ID of subnet in which to create the ENI. Only required when state=present.
        attribute :subnet_id
        validates :subnet_id, presence: true, type: String

        # @return [String] Optional description of the ENI.
        attribute :description
        validates :description, type: String

        # @return [Object] List of security groups associated with the interface. Only used when state=present.
        attribute :security_groups

        # @return [:present, :absent, nil] Create or delete ENI.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Fixnum] The index of the device for the network interface attachment on the instance.
        attribute :device_index
        validates :device_index, type: Fixnum

        # @return [TrueClass] Force detachment of the interface. This applies either when explicitly detaching the interface by setting instance_id to None or when deleting an interface with state=absent.
        attribute :force_detach
        validates :force_detach, type: TrueClass

        # @return [TrueClass] Delete the interface when the instance it is attached to is terminated. You can only specify this flag when the interface is being modified, not on creation.
        attribute :delete_on_termination
        validates :delete_on_termination, type: TrueClass

        # @return [Object] By default, interfaces perform source/destination checks. NAT instances however need this check to be disabled. You can only specify this flag when the interface is being modified, not on creation.
        attribute :source_dest_check
      end
    end
  end
end
