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

        # @return [:absent, :present, :query, nil] defines whether the ACL should be present or not.  The C(query) state gets the current acl without changing it, for use in 'register' operations.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true

        # @return [:yes, :no, nil] whether to follow symlinks on the path if a symlink is encountered.
        attribute :follow
        validates :follow, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] if the target is a directory, setting this to yes will make it the default acl for entities created inside the directory. It causes an error if path is a file.
        attribute :default
        validates :default, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] actual user or group that the ACL applies to when matching entity types user or group are selected.
        attribute :entity
        validates :entity, type: String

        # @return [:group, :mask, :other, :user, nil] the entity type of the ACL to apply, see setfacl documentation for more info.
        attribute :etype
        validates :etype, inclusion: {:in=>[:group, :mask, :other, :user], :message=>"%{value} needs to be :group, :mask, :other, :user"}, allow_nil: true

        # @return [String, nil] Permissions to apply/remove can be any combination of r, w and  x (read, write and execute respectively)
        attribute :permissions
        validates :permissions, type: String

        # @return [String, nil] DEPRECATED. The acl to set or remove.  This must always be quoted in the form of '<etype>:<qualifier>:<perms>'.  The qualifier may be empty for some types, but the type and perms are always required. '-' can be used as placeholder when you do not care about permissions. This is now superseded by entity, type and permissions fields.
        attribute :entry
        validates :entry, type: String

        # @return [:yes, :no, nil] Recursively sets the specified ACL (added in Ansible 2.0). Incompatible with C(state=query).
        attribute :recursive
        validates :recursive, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:default, :mask, :no_mask, nil] Select if and when to recalculate the effective right masks of the files, see setfacl documentation for more info. Incompatible with C(state=query).
        attribute :recalculate_mask
        validates :recalculate_mask, inclusion: {:in=>[:default, :mask, :no_mask], :message=>"%{value} needs to be :default, :mask, :no_mask"}, allow_nil: true
      end
    end
  end
end
