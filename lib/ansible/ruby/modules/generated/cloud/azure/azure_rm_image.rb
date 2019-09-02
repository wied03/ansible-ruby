# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, delete an image from virtual machine, blob uri, managed disk or snapshot.
      class Azure_rm_image < Base
        # @return [String] Name of resource group.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] Name of the image.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] OS disk source from the same region, including a virtual machine id or name, OS disk blob uri, managed OS disk id or name, or OS snapshot id or name.
        attribute :source
        validates :source, presence: true, type: String

        # @return [Array<String>, String, nil] List of data disk sources, including unmanaged blob uri, managed disk id or name, or snapshot id or name.
        attribute :data_disk_sources
        validates :data_disk_sources, type: TypeGeneric.new(String)

        # @return [Object, nil] Location of the image. Derived from I(resource_group) if not specified.
        attribute :location

        # @return [:Windows, :Linux, nil] The OS type of image.
        attribute :os_type
        validates :os_type, expression_inclusion: {:in=>[:Windows, :Linux], :message=>"%{value} needs to be :Windows, :Linux"}, allow_nil: true

        # @return [:absent, :present, nil] Assert the state of the image. Use C(present) to create or update a image and C(absent) to delete an image.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
