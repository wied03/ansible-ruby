# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete blob containers and blob objects. Use to upload a file and store it as a blob object, or download a blob object to a file.
      class Azure_rm_storageblob < Base
        # @return [String] Name of the storage account to use.
        attribute :storage_account_name
        validates :storage_account_name, presence: true, type: String

        # @return [String, nil] Name of a blob object within the container.
        attribute :blob
        validates :blob, type: String

        # @return [String] Name of a blob container within the storage account.
        attribute :container
        validates :container, presence: true, type: String

        # @return [String, nil] Set the blob content-type header. For example, 'image/png'.
        attribute :content_type
        validates :content_type, type: String

        # @return [Object, nil] Set the blob cache-control header.
        attribute :cache_control

        # @return [Object, nil] Set the blob content-disposition header.
        attribute :content_disposition

        # @return [Object, nil] Set the blob encoding header.
        attribute :content_encoding

        # @return [Object, nil] Set the blob content-language header.
        attribute :content_language

        # @return [Object, nil] Set the blob md5 hash value.
        attribute :content_md5

        # @return [String, nil] Destination file path. Use with state 'present' to download a blob.
        attribute :dest
        validates :dest, type: String

        # @return [Boolean, nil] Overwrite existing blob or file when uploading or downloading. Force deletion of a container that contains blobs.
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] Name of the resource group to use.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String, nil] Source file path. Use with state 'present' to upload a blob.
        attribute :src
        validates :src, type: String

        # @return [:absent, :present, nil] Assert the state of a container or blob.,Use state 'absent' with a container value only to delete a container. Include a blob value to remove a specific blob. A container will not be deleted, if it contains blobs. Use the force option to override, deleting the container and all associated blobs.,Use state 'present' to create or update a container and upload or download a blob. If the container does not exist, it will be created. If it exists, it will be updated with configuration options. Provide a blob name and either src or dest to upload or download. Provide a src path to upload and a dest path to download. If a blob (uploading) or a file (downloading) already exists, it will not be overwritten unless the force parameter is true.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:container, :blob, nil] Determine a container's level of public access. By default containers are private. Can only be set at time of container creation.
        attribute :public_access
        validates :public_access, inclusion: {:in=>[:container, :blob], :message=>"%{value} needs to be :container, :blob"}, allow_nil: true
      end
    end
  end
end
