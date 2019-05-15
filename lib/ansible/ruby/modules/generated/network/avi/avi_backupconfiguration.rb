# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is used to configure BackupConfiguration object
      # more examples at U(https://github.com/avinetworks/devops)
      class Avi_backupconfiguration < Base
        # @return [:absent, :present, nil] The state that should be applied on the entity.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:put, :patch, nil] Default method for object update is HTTP PUT.,Setting to patch will override that behavior to use HTTP PATCH.
        attribute :avi_api_update_method
        validates :avi_api_update_method, inclusion: {:in=>[:put, :patch], :message=>"%{value} needs to be :put, :patch"}, allow_nil: true

        # @return [:add, :replace, :delete, nil] Patch operation to use when using avi_api_update_method as patch.
        attribute :avi_api_patch_op
        validates :avi_api_patch_op, inclusion: {:in=>[:add, :replace, :delete], :message=>"%{value} needs to be :add, :replace, :delete"}, allow_nil: true

        # @return [Object, nil] Prefix of the exported configuration file.,Field introduced in 17.1.1.
        attribute :backup_file_prefix

        # @return [Object, nil] Passphrase of backup configuration.
        attribute :backup_passphrase

        # @return [Object, nil] Rotate the backup files based on this count.,Allowed values are 1-20.,Default value when not specified in API or module is interpreted by Avi Controller as 4.
        attribute :maximum_backups_stored

        # @return [String] Name of backup configuration.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Directory at remote destination with write permission for ssh user.
        attribute :remote_directory

        # @return [Object, nil] Remote destination.
        attribute :remote_hostname

        # @return [Object, nil] Local backup.
        attribute :save_local

        # @return [Object, nil] Access credentials for remote destination.,It is a reference to an object of type cloudconnectoruser.
        attribute :ssh_user_ref

        # @return [Object, nil] It is a reference to an object of type tenant.
        attribute :tenant_ref

        # @return [Object, nil] Remote backup.
        attribute :upload_to_remote_host

        # @return [Object, nil] Avi controller URL of the object.
        attribute :url

        # @return [Object, nil] Unique object identifier of the object.
        attribute :uuid
      end
    end
  end
end
