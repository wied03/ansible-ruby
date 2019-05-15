# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete Azure availability set. An availability set cannot be updated, you will have to recreate one instead. The only update operation will be for the tags.
      class Azure_rm_availabilityset < Base
        # @return [String] Name of a resource group where the availability set exists or will be created.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] Name of the availability set.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Assert the state of the availability set. Use 'present' to create or update a availability set and 'absent' to delete a availability set.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Valid azure location. Defaults to location of the resource group.
        attribute :location
        validates :location, type: String

        # @return [Integer, nil] Update domains indicate groups of virtual machines and underlying physical hardware that can be rebooted at the same time. Default is 5.
        attribute :platform_update_domain_count
        validates :platform_update_domain_count, type: Integer

        # @return [Integer, nil] Fault domains define the group of virtual machines that share a common power source and network switch. Should be between 1 and 3. Default is 3
        attribute :platform_fault_domain_count
        validates :platform_fault_domain_count, type: Integer

        # @return [:Classic, :Aligned, nil] Define if the availability set supports managed disks.
        attribute :sku
        validates :sku, inclusion: {:in=>[:Classic, :Aligned], :message=>"%{value} needs to be :Classic, :Aligned"}, allow_nil: true
      end
    end
  end
end
