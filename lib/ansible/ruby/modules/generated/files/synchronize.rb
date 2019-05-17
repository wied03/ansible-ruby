# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # C(synchronize) is a wrapper around rsync to make common tasks in your playbooks quick and easy. It is run and originates on the local host where Ansible is being run. Of course, you could just use the C(command) action to call rsync yourself, but you also have to add a fair number of boilerplate options and host facts. C(synchronize) is not intended to provide access to the full power of rsync, but does make the most common invocations easier to implement. You `still` may need to call rsync directly via C(command) or C(shell) depending on your use case.
      class Synchronize < Base
        # @return [String] Path on the source host that will be synchronized to the destination; The path can be absolute or relative.
        attribute :src
        validates :src, presence: true, type: String

        # @return [String] Path on the destination host that will be synchronized from the source; The path can be absolute or relative.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [Array<String>, String, nil] Port number for ssh on the destination host. Prior to ansible 2.0, the ansible_ssh_port inventory var took precedence over this value.
        attribute :dest_port
        validates :dest_port, type: TypeGeneric.new(String)

        # @return [:pull, :push, nil] Specify the direction of the synchronization. In push mode the localhost or delegate is the source; In pull mode the remote host in context is the source.
        attribute :mode
        validates :mode, inclusion: {:in=>[:pull, :push], :message=>"%{value} needs to be :pull, :push"}, allow_nil: true

        # @return [:yes, :no, nil] Mirrors the rsync archive flag, enables recursive, links, perms, times, owner, group flags and -D.
        attribute :archive
        validates :archive, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Skip based on checksum, rather than mod-time & size; Note that that "archive" option is still enabled by default - the "checksum" option will not disable it.
        attribute :checksum
        validates :checksum, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Compress file data during the transfer. In most cases, leave this enabled unless it causes problems.
        attribute :compress
        validates :compress, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Skip creating new files on receiver.
        attribute :existing_only
        validates :existing_only, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Delete files in C(dest) that don't exist (after transfer, not before) in the C(src) path. This option requires C(recursive=yes).
        attribute :delete
        validates :delete, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Transfer directories without recursing
        attribute :dirs
        validates :dirs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Symbol, nil] Recurse into directories.
        attribute :recursive
        validates :recursive, type: Symbol

        # @return [Symbol, nil] Copy symlinks as symlinks.
        attribute :links
        validates :links, type: Symbol

        # @return [:yes, :no, nil] Copy symlinks as the item that they point to (the referent) is copied, rather than the symlink.
        attribute :copy_links
        validates :copy_links, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Symbol, nil] Preserve permissions.
        attribute :perms
        validates :perms, type: Symbol

        # @return [Symbol, nil] Preserve modification times
        attribute :times
        validates :times, type: Symbol

        # @return [Symbol, nil] Preserve owner (super user only)
        attribute :owner
        validates :owner, type: Symbol

        # @return [Symbol, nil] Preserve group
        attribute :group
        validates :group, type: Symbol

        # @return [String, nil] Specify the rsync command to run on the remote host. See C(--rsync-path) on the rsync man page.,To specify the rsync command to run on the local host, you need to set this your task var C(ansible_rsync_path).
        attribute :rsync_path
        validates :rsync_path, type: String

        # @return [Integer, nil] Specify a C(--timeout) for the rsync command in seconds.
        attribute :rsync_timeout
        validates :rsync_timeout, type: Integer

        # @return [Boolean, nil] put user@ for the remote paths. If you have a custom ssh config to define the remote user for a host that does not match the inventory user, you should set this parameter to "no".
        attribute :set_remote_user
        validates :set_remote_user, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:yes, :no, nil] Use the ssh_args specified in ansible.cfg
        attribute :use_ssh_args
        validates :use_ssh_args, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Array<String>, String, nil] Specify additional rsync options by passing in an array.
        attribute :rsync_opts
        validates :rsync_opts, type: TypeGeneric.new(String)

        # @return [:yes, :no, nil] Tells rsync to keep the partial file which should make a subsequent transfer of the rest of the file much faster.
        attribute :partial
        validates :partial, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Verify destination host key.
        attribute :verify_host
        validates :verify_host, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Specify the private key to use for SSH-based rsync connections (e.g. C(~/.ssh/id_rsa))
        attribute :private_key

        # @return [String, nil] add a destination to hard link against during the rsync.
        attribute :link_dest
        validates :link_dest, type: String
      end
    end
  end
end
