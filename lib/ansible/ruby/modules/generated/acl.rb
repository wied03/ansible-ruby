# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Acl < Base
        # @return [String] The full path of the file or object.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] defines whether the ACL should be present or not.  The C(query) state gets the current acl without changing it, for use in 'register' operations.
        attribute :state
        validates :state, inclusion: {:in=>[:query, :present, :absent], :message=>"%{value} needs to be :query, :present, :absent"}, allow_nil: true

        # @return [TrueClass] whether to follow symlinks on the path if a symlink is encountered.
        attribute :follow
        validates :follow, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] if the target is a directory, setting this to yes will make it the default acl for entities created inside the directory. It causes an error if name is a file.
        attribute :default
        validates :default, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] actual user or group that the ACL applies to when matching entity types user or group are selected.
        attribute :entity
        validates :entity, type: String

        # @return [String] the entity type of the ACL to apply, see setfacl documentation for more info.
        attribute :etype
        validates :etype, inclusion: {:in=>[:user, :group, :mask, :other], :message=>"%{value} needs to be :user, :group, :mask, :other"}, allow_nil: true

        # @return [String] Permissions to apply/remove can be any combination of r, w and  x (read, write and execute respectively)
        attribute :permissions
        validates :permissions, type: String

        # @return [String] DEPRECATED. The acl to set or remove.  This must always be quoted in the form of '<etype>:<qualifier>:<perms>'.  The qualifier may be empty for some types, but the type and perms are always requried. '-' can be used as placeholder when you do not care about permissions. This is now superseded by entity, type and permissions fields.
        attribute :entry
        validates :entry, type: String

        # @return [Object] Recursively sets the specified ACL (added in Ansible 2.0). Incompatible with C(state=query).
        attribute :recursive
        validates :recursive, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
