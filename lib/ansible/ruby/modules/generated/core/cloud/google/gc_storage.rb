# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Gc_storage < Base
        # @return [String] Bucket name.
        attribute :bucket
        validates :bucket, presence: true, type: String

        # @return [String] Keyname of the object inside the bucket. Can be also be used to create "virtual directories" (see examples).
        attribute :object
        validates :object, type: String

        # @return [String] The source file path when performing a PUT operation.
        attribute :src
        validates :src, type: String

        # @return [String] The destination file path when downloading an object/key with a GET operation.
        attribute :dest
        validates :dest, type: String

        # @return [TrueClass] Forces an overwrite either locally on the filesystem or remotely with the object/key. Used with PUT and GET operations.
        attribute :force
        validates :force, type: TrueClass

        # @return [String] This option let's the user set the canned permissions on the object/bucket that are created. The permissions that can be set are 'private', 'public-read', 'authenticated-read'.
        attribute :permission
        validates :permission, type: String

        # @return [String] Headers to attach to object.
        attribute :headers
        validates :headers, type: String

        # @return [Object] Time limit (in seconds) for the URL generated and returned by GCA when performing a mode=put or mode=get_url operation. This url is only available when public-read is the acl for the object.
        attribute :expiration

        # @return [String] Switches the module behaviour between upload, download, get_url (return download url) , get_str (download object as string), create (bucket) and delete (bucket).
        attribute :mode
        validates :mode, presence: true, inclusion: {:in=>[:get, :put, :get_url, :get_str, :delete, :create], :message=>"%{value} needs to be :get, :put, :get_url, :get_str, :delete, :create"}

        # @return [Object] GS secret key. If not set then the value of the GS_SECRET_ACCESS_KEY environment variable is used.
        attribute :gs_secret_key
        validates :gs_secret_key, presence: true

        # @return [Object] GS access key. If not set then the value of the GS_ACCESS_KEY_ID environment variable is used.
        attribute :gs_access_key
        validates :gs_access_key, presence: true
      end
    end
  end
end
