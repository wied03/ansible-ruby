# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete Azure Virtual Machine Extension
      class Azure_rm_virtualmachine_extension < Base
        # @return [String] Name of a resource group where the vm extension exists or will be created.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] Name of the vm extension
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Assert the state of the vm extension. Use 'present' to create or update a vm extension and 'absent' to delete a vm extension.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Valid azure location. Defaults to location of the resource group.
        attribute :location
        validates :location, type: String

        # @return [String, nil] The name of the virtual machine where the extension should be create or updated.
        attribute :virtual_machine_name
        validates :virtual_machine_name, type: String

        # @return [String, nil] The name of the extension handler publisher.
        attribute :publisher
        validates :publisher, type: String

        # @return [String, nil] The type of the extension handler.
        attribute :virtual_machine_extension_type
        validates :virtual_machine_extension_type, type: String

        # @return [Float, nil] The type version of the extension handler.
        attribute :type_handler_version
        validates :type_handler_version, type: Float

        # @return [Hash, nil] Json formatted public settings for the extension.
        attribute :settings
        validates :settings, type: Hash

        # @return [Object, nil] Json formatted protected settings for the extension.
        attribute :protected_settings

        # @return [Boolean, nil] Whether the extension handler should be automatically upgraded across minor versions.
        attribute :auto_upgrade_minor_version
        validates :auto_upgrade_minor_version, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
