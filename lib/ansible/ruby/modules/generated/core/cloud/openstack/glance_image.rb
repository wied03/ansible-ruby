# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or Remove images from the glance repository.
      class Glance_image < Base
        # @return [String] login username to authenticate to keystone
        attribute :login_username
        validates :login_username, presence: true, type: String

        # @return [String] Password of login user
        attribute :login_password
        validates :login_password, presence: true, type: String

        # @return [String] The tenant name of the login user
        attribute :login_tenant_name
        validates :login_tenant_name, presence: true, type: String

        # @return [String, nil] The keystone url for authentication
        attribute :auth_url
        validates :auth_url, type: String

        # @return [Object, nil] Name of the region
        attribute :region_name

        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Name that has to be given to the image
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The format of the disk that is getting uploaded
        attribute :disk_format
        validates :disk_format, type: String

        # @return [String, nil] The format of the container
        attribute :container_format
        validates :container_format, type: String

        # @return [Object, nil] The owner of the image
        attribute :owner

        # @return [Object, nil] The minimum disk space required to deploy this image
        attribute :min_disk

        # @return [Object, nil] The minimum ram required to deploy this image
        attribute :min_ram

        # @return [String, nil] Whether the image can be accessed publicly
        attribute :is_public
        validates :is_public, type: String

        # @return [String, nil] A url from where the image can be downloaded, mutually exclusive with file parameter
        attribute :copy_from
        validates :copy_from, type: String

        # @return [Integer, nil] The time to wait for the image process to complete in seconds
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Object, nil] The path to the file which has to be uploaded, mutually exclusive with copy_from
        attribute :file

        # @return [:publicURL, :internalURL, nil] The name of the glance service's endpoint URL type
        attribute :endpoint_type
        validates :endpoint_type, inclusion: {:in=>[:publicURL, :internalURL], :message=>"%{value} needs to be :publicURL, :internalURL"}, allow_nil: true
      end
    end
  end
end
