# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage storage connections in oVirt
      class Ovirt_storage_connection < Base
        # @return [String, nil] Id of the storage connection to manage.
        attribute :id
        validates :id, type: String

        # @return [:present, :absent, nil] Should the storage connection be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Name of the storage domain to be used with storage connection.
        attribute :storage
        validates :storage, type: String

        # @return [String, nil] Address of the storage server. E.g.: myserver.mydomain.com
        attribute :address
        validates :address, type: String

        # @return [Object, nil] Path of the mount point of the storage. E.g.: /path/to/my/data
        attribute :path

        # @return [Object, nil] NFS version. One of: I(auto), I(v3), I(v4) or I(v4_1).
        attribute :nfs_version

        # @return [Object, nil] The time in tenths of a second to wait for a response before retrying NFS requests. Range 0 to 65535.
        attribute :nfs_timeout

        # @return [Object, nil] The number of times to retry a request before attempting further recovery actions. Range 0 to 65535.
        attribute :nfs_retrans

        # @return [Object, nil] Option which will be passed when mounting storage.
        attribute :mount_options

        # @return [Object, nil] A CHAP password for logging into a target.
        attribute :password

        # @return [Object, nil] A CHAP username for logging into a target.
        attribute :username

        # @return [Integer, nil] Port of the iSCSI storage server.
        attribute :port
        validates :port, type: Integer

        # @return [String, nil] The target IQN for the storage device.
        attribute :target
        validates :target, type: String

        # @return [String, nil] Storage type. For example: I(nfs), I(iscsi), etc.
        attribute :type
        validates :type, type: String

        # @return [Object, nil] Virtual File System type.
        attribute :vfs_type

        # @return [Boolean, nil] This parameter is relevant only when updating a connection.,If I(true) the storage domain don't have to be in I(MAINTENANCE) state, so the storage connection is updated.
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
