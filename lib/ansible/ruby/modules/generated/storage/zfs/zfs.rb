# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages ZFS file systems, volumes, clones and snapshots
      class Zfs < Base
        # @return [String] File system, snapshot or volume name e.g. C(rpool/myfs).
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present] Whether to create (C(present)), or remove (C(absent)) a file system, snapshot or volume. All parents/children will be created/destroyed as needed to reach the desired state.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}

        # @return [String, nil] Snapshot from which to create a clone.
        attribute :origin
        validates :origin, type: String

        # @return [Object, nil] (**DEPRECATED**) This will be removed in Ansible-2.9.  Set these values in the,C(extra_zfs_properties) option instead.,The C(zfs) module takes key=value pairs for zfs properties to be set.,See the zfs(8) man page for more information.
        attribute :key_value

        # @return [Hash, nil] A dictionary of zfs properties to be set.,See the zfs(8) man page for more information.
        attribute :extra_zfs_properties
        validates :extra_zfs_properties, type: Hash
      end
    end
  end
end
