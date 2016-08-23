# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Os_image < Base
        # @return [String] Name that has to be given to the image
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The format of the disk that is getting uploaded
        attribute :disk_format
        validates :disk_format, type: String

        # @return [String] The format of the container
        attribute :container_format
        validates :container_format, type: String

        # @return [String] The owner of the image
        attribute :owner
        validates :owner, type: String

        # @return [String] The minimum disk space (in GB) required to boot this image
        attribute :min_disk
        validates :min_disk, type: String

        # @return [String] The minimum ram (in MB) required to boot this image
        attribute :min_ram
        validates :min_ram, type: String

        # @return [String] Whether the image can be accessed publicly. Note that publicizing an image requires admin role by default.
        attribute :is_public
        validates :is_public, type: String

        # @return [String] The path to the file which has to be uploaded
        attribute :filename
        validates :filename, type: String

        # @return [String] The name of an existing ramdisk image that will be associated with this image
        attribute :ramdisk
        validates :ramdisk, type: String

        # @return [String] The name of an existing kernel image that will be associated with this image
        attribute :kernel
        validates :kernel, type: String

        # @return [Hash] Additional properties to be associated with this image
        attribute :properties
        validates :properties, type: Hash

        # @return [String] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
