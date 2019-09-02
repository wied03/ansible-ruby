# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows to manage samba shares on a univention corporate server (UCS). It uses the python API of the UCS to create a new object or edit it.
      class Udm_share < Base
        # @return [:present, :absent, nil] Whether the share is present or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Name
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Host FQDN (server which provides the share), e.g. C({{ ansible_fqdn }}). Required if C(state=present).
        attribute :host
        validates :host, type: String

        # @return [String, nil] Directory on the providing server, e.g. C(/home). Required if C(state=present).
        attribute :path
        validates :path, type: String

        # @return [Object, nil] Windows name. Required if C(state=present).
        attribute :samba_name

        # @return [Object] Organisational unit, inside the LDAP Base DN.
        attribute :ou
        validates :ou, presence: true

        # @return [Integer, nil] Directory owner of the share's root directory.
        attribute :owner
        validates :owner, type: Integer

        # @return [String, nil] Directory owner group of the share's root directory.
        attribute :group
        validates :group, type: String

        # @return [String, nil] Permissions for the share's root directory.
        attribute :directorymode
        validates :directorymode, type: String

        # @return [0, 1, nil] Modify user ID for root user (root squashing).
        attribute :root_squash
        validates :root_squash, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [0, 1, nil] Subtree checking.
        attribute :subtree_checking
        validates :subtree_checking, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [String, nil] NFS synchronisation.
        attribute :sync
        validates :sync, type: String

        # @return [0, 1, nil] NFS write access.
        attribute :writeable
        validates :writeable, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [Object, nil] Blocking size.
        attribute :samba_block_size

        # @return [0, 1, nil] Blocking locks.
        attribute :samba_blocking_locks
        validates :samba_blocking_locks, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [0, 1, nil] Show in Windows network environment.
        attribute :samba_browseable
        validates :samba_browseable, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [String, nil] File mode.
        attribute :samba_create_mode
        validates :samba_create_mode, type: String

        # @return [String, nil] Client-side caching policy.
        attribute :samba_csc_policy
        validates :samba_csc_policy, type: String

        # @return [Object, nil] Option name in smb.conf and its value.
        attribute :samba_custom_settings

        # @return [String, nil] Directory mode.
        attribute :samba_directory_mode
        validates :samba_directory_mode, type: String

        # @return [String, nil] Directory security mode.
        attribute :samba_directory_security_mode
        validates :samba_directory_security_mode, type: String

        # @return [0, 1, nil] Users with write access may modify permissions.
        attribute :samba_dos_filemode
        validates :samba_dos_filemode, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [0, 1, nil] Fake oplocks.
        attribute :samba_fake_oplocks
        validates :samba_fake_oplocks, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [0, 1, nil] Force file mode.
        attribute :samba_force_create_mode
        validates :samba_force_create_mode, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [0, 1, nil] Force directory mode.
        attribute :samba_force_directory_mode
        validates :samba_force_directory_mode, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [0, 1, nil] Force directory security mode.
        attribute :samba_force_directory_security_mode
        validates :samba_force_directory_security_mode, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [Object, nil] Force group.
        attribute :samba_force_group

        # @return [0, 1, nil] Force security mode.
        attribute :samba_force_security_mode
        validates :samba_force_security_mode, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [Object, nil] Force user.
        attribute :samba_force_user

        # @return [Object, nil] Hide files.
        attribute :samba_hide_files

        # @return [0, 1, nil] Hide unreadable files/directories.
        attribute :samba_hide_unreadable
        validates :samba_hide_unreadable, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [Object, nil] Allowed host/network.
        attribute :samba_hosts_allow

        # @return [Object, nil] Denied host/network.
        attribute :samba_hosts_deny

        # @return [0, 1, nil] Inherit ACLs.
        attribute :samba_inherit_acls
        validates :samba_inherit_acls, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [0, 1, nil] Create files/directories with the owner of the parent directory.
        attribute :samba_inherit_owner
        validates :samba_inherit_owner, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [0, 1, nil] Create files/directories with permissions of the parent directory.
        attribute :samba_inherit_permissions
        validates :samba_inherit_permissions, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [Object, nil] Invalid users or groups.
        attribute :samba_invalid_users

        # @return [0, 1, nil] Level 2 oplocks.
        attribute :samba_level_2_oplocks
        validates :samba_level_2_oplocks, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [0, 1, nil] Locking.
        attribute :samba_locking
        validates :samba_locking, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [0, 1, nil] MSDFS root.
        attribute :samba_msdfs_root
        validates :samba_msdfs_root, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [0, 1, nil] NT ACL support.
        attribute :samba_nt_acl_support
        validates :samba_nt_acl_support, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [0, 1, nil] Oplocks.
        attribute :samba_oplocks
        validates :samba_oplocks, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [Object, nil] Postexec script.
        attribute :samba_postexec

        # @return [Object, nil] Preexec script.
        attribute :samba_preexec

        # @return [0, 1, nil] Allow anonymous read-only access with a guest user.
        attribute :samba_public
        validates :samba_public, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [String, nil] Security mode.
        attribute :samba_security_mode
        validates :samba_security_mode, type: String

        # @return [String, nil] Strict locking.
        attribute :samba_strict_locking
        validates :samba_strict_locking, type: String

        # @return [Object, nil] VFS objects.
        attribute :samba_vfs_objects

        # @return [Object, nil] Valid users or groups.
        attribute :samba_valid_users

        # @return [Object, nil] Restrict write access to these users/groups.
        attribute :samba_write_list

        # @return [0, 1, nil] Samba write access.
        attribute :samba_writeable
        validates :samba_writeable, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [Object, nil] Only allow access for this host, IP address or network.
        attribute :nfs_hosts

        # @return [Object, nil] Option name in exports file.
        attribute :nfs_custom_settings
      end
    end
  end
end
