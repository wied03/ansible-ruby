# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Lxc_container < Base
        # @return [String] Name of a container.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Backend storage type for the container.
        attribute :backing_store
        validates :backing_store, inclusion: {:in=>[:dir, :lvm, :loop, :btrfs, :overlayfs, :zfs], :message=>"%{value} needs to be :dir, :lvm, :loop, :btrfs, :overlayfs, :zfs"}, allow_nil: true

        # @return [String] Name of the template to use within an LXC create.
        attribute :template
        validates :template, type: String

        # @return [String] Template options when building the container.
        attribute :template_options
        validates :template_options, type: String

        # @return [Object] Path to the LXC configuration file.
        attribute :config

        # @return [String] Name of the logical volume, defaults to the container name.
        attribute :lv_name
        validates :lv_name, type: String

        # @return [String] If Backend store is lvm, specify the name of the volume group.
        attribute :vg_name
        validates :vg_name, type: String

        # @return [Object] Use LVM thin pool called TP.
        attribute :thinpool

        # @return [String] Create fstype TYPE.
        attribute :fs_type
        validates :fs_type, type: String

        # @return [String] File system Size.
        attribute :fs_size
        validates :fs_size, type: String

        # @return [Object] Place rootfs directory under DIR.
        attribute :directory

        # @return [Object] Create zfs under given zfsroot.
        attribute :zfs_root

        # @return [String] Run a command within a container.
        attribute :container_command
        validates :container_command, type: String

        # @return [Object] Place container under PATH
        attribute :lxc_path

        # @return [TrueClass] Enable a container log for host actions to the container.
        attribute :container_log
        validates :container_log, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] Set the log level for a container where *container_log* was set.
        attribute :container_log_level
        validates :container_log_level, inclusion: {:in=>[:INFO, :ERROR, :DEBUG], :message=>"%{value} needs to be :INFO, :ERROR, :DEBUG"}, allow_nil: true

        # @return [String] Name of the new cloned server. This is only used when state is clone.
        attribute :clone_name
        validates :clone_name, type: String

        # @return [TrueClass] Create a snapshot a container when cloning. This is not supported by all container storage backends. Enabling this may fail if the backing store does not support snapshots.
        attribute :clone_snapshot
        validates :clone_snapshot, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [TrueClass] Create an archive of a container. This will create a tarball of the running container.
        attribute :archive
        validates :archive, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] Path the save the archived container. If the path does not exist the archive method will attempt to create it.
        attribute :archive_path
        validates :archive_path, type: String

        # @return [String] Type of compression to use when creating an archive of a running container.
        attribute :archive_compression
        validates :archive_compression, inclusion: {:in=>[:gzip, :bzip2, :none], :message=>"%{value} needs to be :gzip, :bzip2, :none"}, allow_nil: true

        # @return [String] Define the state of a container. If you clone a container using `clone_name` the newly cloned container created in a stopped state. The running container will be stopped while the clone operation is happening and upon completion of the clone the original container state will be restored.
        attribute :state
        validates :state, inclusion: {:in=>[:started, :stopped, :restarted, :absent, :frozen], :message=>"%{value} needs to be :started, :stopped, :restarted, :absent, :frozen"}, allow_nil: true

        # @return [Array] list of 'key=value' options to use when configuring a container.
        attribute :container_config
        validates :container_config, type: Array
      end
    end
  end
end
