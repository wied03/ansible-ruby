# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and optionally attach an Elastic Network Interface (ENI) to an instance. If an ENI ID or private_ip is provided, the existing ENI (if any) will be modified. The 'attached' parameter controls the attachment status of the network interface.
      class Ec2_eni < Base
        # @return [String, nil] The ID of the ENI (to modify); if null and state is present, a new eni will be created.
        attribute :eni_id
        validates :eni_id, type: String

        # @return [String, nil] Instance ID that you wish to attach ENI to. Since version 2.2, use the 'attached' parameter to attach or detach an ENI. Prior to 2.2, to detach an ENI from an instance, use 'None'.
        attribute :instance_id
        validates :instance_id, type: String

        # @return [String, nil] Private IP address.
        attribute :private_ip_address
        validates :private_ip_address, type: String

        # @return [String, nil] ID of subnet in which to create the ENI.
        attribute :subnet_id
        validates :subnet_id, type: String

        # @return [String, nil] Optional description of the ENI.
        attribute :description
        validates :description, type: String

        # @return [Object, nil] List of security groups associated with the interface. Only used when state=present. Since version 2.2, you can specify security groups by ID or by name or a combination of both. Prior to 2.2, you can specify only by ID.
        attribute :security_groups

        # @return [:present, :absent, nil] Create or delete ENI
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Integer, nil] The index of the device for the network interface attachment on the instance.
        attribute :device_index
        validates :device_index, type: Integer

        # @return [Symbol, nil] Specifies if network interface should be attached or detached from instance. If omitted, attachment status won't change
        attribute :attached
        validates :attached, type: Symbol

        # @return [:yes, :no, nil] Force detachment of the interface. This applies either when explicitly detaching the interface by setting instance_id to None or when deleting an interface with state=absent.
        attribute :force_detach
        validates :force_detach, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Symbol, nil] Delete the interface when the instance it is attached to is terminated. You can only specify this flag when the interface is being modified, not on creation.
        attribute :delete_on_termination
        validates :delete_on_termination, type: Symbol

        # @return [Symbol, nil] By default, interfaces perform source/destination checks. NAT instances however need this check to be disabled. You can only specify this flag when the interface is being modified, not on creation.
        attribute :source_dest_check
        validates :source_dest_check, type: Symbol

        # @return [Array<String>, String, nil] A list of IP addresses to assign as secondary IP addresses to the network interface. This option is mutually exclusive of secondary_private_ip_address_count
        attribute :secondary_private_ip_addresses
        validates :secondary_private_ip_addresses, type: TypeGeneric.new(String)

        # @return [Symbol, nil] To be used with I(secondary_private_ip_addresses) to determine whether or not to remove any secondary IP addresses other than those specified. Set secondary_private_ip_addresses to an empty list to purge all secondary addresses.
        attribute :purge_secondary_private_ip_addresses
        validates :purge_secondary_private_ip_addresses, type: Symbol

        # @return [Integer, nil] The number of secondary IP addresses to assign to the network interface. This option is mutually exclusive of secondary_private_ip_addresses
        attribute :secondary_private_ip_address_count
        validates :secondary_private_ip_address_count, type: Integer

        # @return [:yes, :no, nil] Indicates whether to allow an IP address that is already assigned to another network interface or instance to be reassigned to the specified network interface.
        attribute :allow_reassignment
        validates :allow_reassignment, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
