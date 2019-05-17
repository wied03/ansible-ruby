# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage storage domains in oVirt/RHV
      class Ovirt_storage_domain < Base
        # @return [Object, nil] Id of the storage domain to be imported.
        attribute :id

        # @return [String, nil] Name of the storage domain to manage. (Not required when state is I(imported))
        attribute :name
        validates :name, type: String

        # @return [:present, :absent, :maintenance, :unattached, :imported, :update_ovf_store, nil] Should the storage domain be present/absent/maintenance/unattached/imported/update_ovf_store,I(imported) is supported since version 2.4.,I(update_ovf_store) is supported since version 2.5, currently if C(wait) is (true), we don't wait for update.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :maintenance, :unattached, :imported, :update_ovf_store], :message=>"%{value} needs to be :present, :absent, :maintenance, :unattached, :imported, :update_ovf_store"}, allow_nil: true

        # @return [Object, nil] Description of the storage domain.
        attribute :description

        # @return [Object, nil] Comment of the storage domain.
        attribute :comment

        # @return [String, Integer, nil] Data center name where storage domain should be attached.,This parameter isn't idempotent, it's not possible to change data center of storage domain.
        attribute :data_center
        validates :data_center, type: MultipleTypes.new(String, Integer)

        # @return [:data, :iso, :export, nil] Function of the storage domain.,This parameter isn't idempotent, it's not possible to change domain function of storage domain.
        attribute :domain_function
        validates :domain_function, inclusion: {:in=>[:data, :iso, :export], :message=>"%{value} needs to be :data, :iso, :export"}, allow_nil: true

        # @return [String, nil] Host to be used to mount storage.
        attribute :host
        validates :host, type: String

        # @return [Hash, nil] Dictionary with values for localfs storage type:,C(path) - Path of the mount point. E.g.: /path/to/my/data,Note that these parameters are not idempotent.
        attribute :localfs
        validates :localfs, type: Hash

        # @return [Hash, nil] Dictionary with values for NFS storage type:,C(address) - Address of the NFS server. E.g.: myserver.mydomain.com,C(path) - Path of the mount point. E.g.: /path/to/my/data,C(version) - NFS version. One of: I(auto), I(v3), I(v4) or I(v4_1).,C(timeout) - The time in tenths of a second to wait for a response before retrying NFS requests. Range 0 to 65535.,C(retrans) - The number of times to retry a request before attempting further recovery actions. Range 0 to 65535.,C(mount_options) - Option which will be passed when mounting storage.,Note that these parameters are not idempotent.
        attribute :nfs
        validates :nfs, type: Hash

        # @return [Hash, nil] Dictionary with values for iSCSI storage type:,C(address) - Address of the iSCSI storage server.,C(port) - Port of the iSCSI storage server.,C(target) - The target IQN for the storage device.,C(lun_id) - LUN id(s).,C(username) - A CHAP user name for logging into a target.,C(password) - A CHAP password for logging into a target.,C(override_luns) - If I(True) ISCSI storage domain luns will be overridden before adding.,C(target_lun_map) - List of dictionary containing targets and LUNs.",Note that these parameters are not idempotent.,Parameter C(target_lun_map) is supported since Ansible 2.5.
        attribute :iscsi
        validates :iscsi, type: Hash

        # @return [Object, nil] Dictionary with values for PosixFS storage type:,C(path) - Path of the mount point. E.g.: /path/to/my/data,C(vfs_type) - Virtual File System type.,C(mount_options) - Option which will be passed when mounting storage.,Note that these parameters are not idempotent.
        attribute :posixfs

        # @return [Hash, nil] Dictionary with values for GlusterFS storage type:,C(address) - Address of the Gluster server. E.g.: myserver.mydomain.com,C(path) - Path of the mount point. E.g.: /path/to/my/data,C(mount_options) - Option which will be passed when mounting storage.,Note that these parameters are not idempotent.
        attribute :glusterfs
        validates :glusterfs, type: Hash

        # @return [Hash, nil] Dictionary with values for fibre channel storage type:,C(lun_id) - LUN id.,C(override_luns) - If I(True) FCP storage domain LUNs will be overridden before adding.,Note that these parameters are not idempotent.
        attribute :fcp
        validates :fcp, type: Hash

        # @return [Symbol, nil] Boolean flag which indicates whether the storage domain should wipe the data after delete.
        attribute :wipe_after_delete
        validates :wipe_after_delete, type: Symbol

        # @return [Symbol, nil] Boolean flag which indicates whether the storage domain is configured as backup or not.
        attribute :backup
        validates :backup, type: Symbol

        # @return [Integer, nil] Indicates the minimal free space the storage domain should contain in percentages.
        attribute :critical_space_action_blocker
        validates :critical_space_action_blocker, type: Integer

        # @return [Integer, nil] Indicates the minimum percentage of a free space in a storage domain to present a warning.
        attribute :warning_low_space
        validates :warning_low_space, type: Integer

        # @return [Symbol, nil] Logical remove of the storage domain. If I(true) retains the storage domain's data for import.,This parameter is relevant only when C(state) is I(absent).
        attribute :destroy
        validates :destroy, type: Symbol

        # @return [Symbol, nil] If I(True) storage domain will be formatted after removing it from oVirt/RHV.,This parameter is relevant only when C(state) is I(absent).
        attribute :format
        validates :format, type: Symbol

        # @return [Symbol, nil] If I(True) storage domain blocks will be discarded upon deletion. Enabled by default.,This parameter is relevant only for block based storage domains.
        attribute :discard_after_delete
        validates :discard_after_delete, type: Symbol
      end
    end
  end
end
