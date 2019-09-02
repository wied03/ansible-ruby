# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete an Azure Managed Disk
      class Azure_rm_managed_disk < Base
        # @return [String] Name of a resource group where the managed disk exists or will be created.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] Name of the managed disk.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Assert the state of the managed disk. Use C(present) to create or update a managed disk and 'absent' to delete a managed disk.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Valid Azure location. Defaults to location of the resource group.
        attribute :location
        validates :location, type: String

        # @return [:Standard_LRS, :Premium_LRS, nil] Type of storage for the managed disk: C(Standard_LRS)  or C(Premium_LRS). If not specified the disk is created C(Standard_LRS).
        attribute :storage_account_type
        validates :storage_account_type, expression_inclusion: {:in=>[:Standard_LRS, :Premium_LRS], :message=>"%{value} needs to be :Standard_LRS, :Premium_LRS"}, allow_nil: true

        # @return [:empty, :import, :copy, nil] Allowed values: empty, import, copy. C(import) from a VHD file in I(source_uri) and C(copy) from previous managed disk I(source_resource_uri).
        attribute :create_option
        validates :create_option, expression_inclusion: {:in=>[:empty, :import, :copy], :message=>"%{value} needs to be :empty, :import, :copy"}, allow_nil: true

        # @return [Object, nil] URI to a valid VHD file to be used when I(create_option) is C(import).
        attribute :source_uri

        # @return [Object, nil] The resource ID of the managed disk to copy when I(create_option) is C(copy).
        attribute :source_resource_uri

        # @return [:linux, :windows, nil] Type of Operating System: C(linux) or C(windows). Used when I(create_option) is either C(copy) or C(import) and the source is an OS disk.
        attribute :os_type
        validates :os_type, expression_inclusion: {:in=>[:linux, :windows], :message=>"%{value} needs to be :linux, :windows"}, allow_nil: true

        # @return [Integer, nil] Size in GB of the managed disk to be created. If I(create_option) is C(copy) then the value must be greater than or equal to the source's size.
        attribute :disk_size_gb
        validates :disk_size_gb, type: Integer

        # @return [String, nil] Name of an existing virtual machine with which the disk is or will be associated, this VM should be in the same resource group.,To detach a disk from a vm, keep undefined.
        attribute :managed_by
        validates :managed_by, type: String

        # @return [Object, nil] Tags to assign to the managed disk.
        attribute :tags
      end
    end
  end
end
