# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Synchronize < Base
        # @return [Object] Path on the source host that will be synchronized to the destination; The path can be absolute or relative.
        attribute :src
        validates :src, presence: true

        # @return [Object] Path on the destination host that will be synchronized from the source; The path can be absolute or relative.
        attribute :dest
        validates :dest, presence: true

        # @return [Array<String>] Port number for ssh on the destination host. Prior to ansible 2.0, the ansible_ssh_port inventory var took precedence over this value.
        attribute :dest_port, flat_array: true
        validates :dest_port, type: TypeGeneric.new(String)

        # @return [String] Specify the direction of the synchronization. In push mode the localhost or delegate is the source; In pull mode the remote host in context is the source.
        attribute :mode
        validates :mode, inclusion: {:in=>[:push, :pull], :message=>"%{value} needs to be :push, :pull"}, allow_nil: true

        # @return [String] Mirrors the rsync archive flag, enables recursive, links, perms, times, owner, group flags and -D.
        attribute :archive
        validates :archive, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Skip based on checksum, rather than mod-time & size; Note that that "archive" option is still enabled by default - the "checksum" option will not disable it.
        attribute :checksum
        validates :checksum, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Compress file data during the transfer. In most cases, leave this enabled unless it causes problems.
        attribute :compress
        validates :compress, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Skip creating new files on receiver.
        attribute :existing_only
        validates :existing_only, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Delete files that don't exist (after transfer, not before) in the C(src) path. This option requires C(recursive=yes).
        attribute :delete
        validates :delete, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Transfer directories without recursing
        attribute :dirs
        validates :dirs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Recurse into directories.
        attribute :recursive
        validates :recursive, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Copy symlinks as symlinks.
        attribute :links
        validates :links, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Copy symlinks as the item that they point to (the referent) is copied, rather than the symlink.
        attribute :copy_links
        validates :copy_links, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Preserve permissions.
        attribute :perms
        validates :perms, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Preserve modification times
        attribute :times
        validates :times, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Preserve owner (super user only)
        attribute :owner
        validates :owner, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Preserve group
        attribute :group
        validates :group, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] Specify the rsync command to run on the remote host. See C(--rsync-path) on the rsync man page.
        attribute :rsync_path

        # @return [Fixnum] Specify a --timeout for the rsync command in seconds.
        attribute :rsync_timeout
        validates :rsync_timeout, type: Fixnum

        # @return [TrueClass] put user@ for the remote paths. If you have a custom ssh config to define the remote user for a host that does not match the inventory user, you should set this parameter to "no".
        attribute :set_remote_user
        validates :set_remote_user, type: TrueClass

        # @return [String] Use the ssh_args specified in ansible.cfg
        attribute :use_ssh_args
        validates :use_ssh_args, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] Specify additional rsync options by passing in an array.
        attribute :rsync_opts

        # @return [Object] Tells rsync to keep the partial file which should make a subsequent transfer of the rest of the file much faster.
        attribute :partial

        # @return [Object] Verify destination host key.
        attribute :verify_host
      end
    end
  end
end