# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Sets and retrieves file ACL information.
      class Acl < Base
        # @return [String] The full path of the file or object.
        attribute :path
        validates :path, presence: true, type: String

        # @return [:query, :present, :absent, nil] defines whether the ACL should be present or not.  The C(query) state gets the current acl without changing it, for use in 'register' operations.
        attribute :state
        validates :state, inclusion: {:in=>[:query, :present, :absent], :message=>"%{value} needs to be :query, :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] whether to follow symlinks on the path if a symlink is encountered.
        attribute :follow
        validates :follow, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] if the target is a directory, setting this to yes will make it the default acl for entities created inside the directory. It causes an error if path is a file.
        attribute :default
        validates :default, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] actual user or group that the ACL applies to when matching entity types user or group are selected.
        attribute :entity
        validates :entity, type: String

        # @return [:user, :group, :mask, :other, nil] the entity type of the ACL to apply, see setfacl documentation for more info.
        attribute :etype
        validates :etype, inclusion: {:in=>[:user, :group, :mask, :other], :message=>"%{value} needs to be :user, :group, :mask, :other"}, allow_nil: true

        # @return [String, nil] Permissions to apply/remove can be any combination of r, w and  x (read, write and execute respectively)
        attribute :permissions
        validates :permissions, type: String

        # @return [String, nil] DEPRECATED. The acl to set or remove.  This must always be quoted in the form of '<etype>:<qualifier>:<perms>'.  The qualifier may be empty for some types, but the type and perms are always required. '-' can be used as placeholder when you do not care about permissions. This is now superseded by entity, type and permissions fields.
        attribute :entry
        validates :entry, type: String

        # @return [Boolean, nil] Recursively sets the specified ACL (added in Ansible 2.0). Incompatible with C(state=query).
        attribute :recursive
        validates :recursive, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
