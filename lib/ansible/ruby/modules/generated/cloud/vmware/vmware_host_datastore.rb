# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to mount/umount datastore on ESXi host.
      # This module only support NFS/VMFS type of datastores.
      # For VMFS datastore, available device must already be connected on ESXi host.
      # All parameters and VMware object names are case sensitive.
      class Vmware_host_datastore < Base
        # @return [String] Name of the datacenter to add the datastore.
        attribute :datacenter_name
        validates :datacenter_name, presence: true, type: String

        # @return [String] Name of the datastore to add/remove.
        attribute :datastore_name
        validates :datastore_name, presence: true, type: String

        # @return [:nfs, :vmfs] Type of the datastore to configure (nfs/vmfs).
        attribute :datastore_type
        validates :datastore_type, presence: true, inclusion: {:in=>[:nfs, :vmfs], :message=>"%{value} needs to be :nfs, :vmfs"}

        # @return [String, nil] NFS host serving nfs datastore.,Required if datastore type is set to C(nfs) and state is set to C(present), else unused.
        attribute :nfs_server
        validates :nfs_server, type: String

        # @return [String, nil] Resource path on NFS host.,Required if datastore type is set to C(nfs) and state is set to C(present), else unused.
        attribute :nfs_path
        validates :nfs_path, type: String

        # @return [Boolean, nil] ReadOnly or ReadWrite mount.,Unused if datastore type is not set to C(nfs) and state is not set to C(present).
        attribute :nfs_ro
        validates :nfs_ro, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Name of the device to be used as VMFS datastore.,Required for VMFS datastore type and state is set to C(present), else unused.
        attribute :vmfs_device_name
        validates :vmfs_device_name, type: String

        # @return [Integer, nil] VMFS version to use for datastore creation.,Unused if datastore type is not set to C(vmfs) and state is not set to C(present).
        attribute :vmfs_version
        validates :vmfs_version, type: Integer

        # @return [String] ESXi hostname to manage the datastore.
        attribute :esxi_hostname
        validates :esxi_hostname, presence: true, type: String

        # @return [:present, :absent, nil] present: Mount datastore on host if datastore is absent else do nothing.,absent: Umount datastore if datastore is present else do nothing.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
