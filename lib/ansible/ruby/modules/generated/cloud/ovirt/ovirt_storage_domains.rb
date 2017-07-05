# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage storage domains in oVirt
      class Ovirt_storage_domains < Base
        # @return [String, nil] Name of the the storage domain to manage.
        attribute :name
        validates :name, type: String

        # @return [:present, :absent, :maintenance, :unattached, nil] Should the storage domain be present/absent/maintenance/unattached
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :maintenance, :unattached], :message=>"%{value} needs to be :present, :absent, :maintenance, :unattached"}, allow_nil: true

        # @return [Object, nil] Description of the storage domain.
        attribute :description

        # @return [Object, nil] Comment of the storage domain.
        attribute :comment

        # @return [String, nil] Data center name where storage domain should be attached.,This parameter isn't idempotent, it's not possible to change data center of storage domain.
        attribute :data_center
        validates :data_center, type: String

        # @return [:data, :iso, :export, nil] Function of the storage domain.,This parameter isn't idempotent, it's not possible to change domain function of storage domain.
        attribute :domain_function
        validates :domain_function, inclusion: {:in=>[:data, :iso, :export], :message=>"%{value} needs to be :data, :iso, :export"}, allow_nil: true

        # @return [String, nil] Host to be used to mount storage.
        attribute :host
        validates :host, type: String

        # @return [Hash, nil] Dictionary with values for NFS storage type:,C(address) - Address of the NFS server. E.g.: myserver.mydomain.com,C(path) - Path of the mount point. E.g.: /path/to/my/data,C(version) - NFS version. One of: I(auto), I(v3), I(v4) or I(v4_1).,C(timeout) - The time in tenths of a second to wait for a response before retrying NFS requests. Range 0 to 65535.,C(retrans) - The number of times to retry a request before attempting further recovery actions. Range 0 to 65535.,Note that these parameters are not idempotent.
        attribute :nfs
        validates :nfs, type: Hash

        # @return [Hash, nil] Dictionary with values for iSCSI storage type:,C(address) - Address of the iSCSI storage server.,C(port) - Port of the iSCSI storage server.,C(target) - The target IQN for the storage device.,C(lun_id) - LUN id.,C(username) - A CHAP user name for logging into a target.,C(password) - A CHAP password for logging into a target.,C(override_luns) - If I(True) ISCSI storage domain luns will be overriden before adding.,Note that these parameters are not idempotent.
        attribute :iscsi
        validates :iscsi, type: Hash

        # @return [Object, nil] Dictionary with values for PosixFS storage type:,C(path) - Path of the mount point. E.g.: /path/to/my/data,C(vfs_type) - Virtual File System type.,C(mount_options) - Option which will be passed when mounting storage.,Note that these parameters are not idempotent.
        attribute :posixfs

        # @return [Hash, nil] Dictionary with values for GlusterFS storage type:,C(address) - Address of the Gluster server. E.g.: myserver.mydomain.com,C(path) - Path of the mount point. E.g.: /path/to/my/data,C(mount_options) - Option which will be passed when mounting storage.,Note that these parameters are not idempotent.
        attribute :glusterfs
        validates :glusterfs, type: Hash

        # @return [Object, nil] Dictionary with values for fibre channel storage type:,C(address) - Address of the fibre channel storage server.,C(port) - Port of the fibre channel storage server.,C(lun_id) - LUN id.,Note that these parameters are not idempotent.
        attribute :fcp

        # @return [Object, nil] Logical remove of the storage domain. If I(true) retains the storage domain's data for import.,This parameter is relevant only when C(state) is I(absent).
        attribute :destroy

        # @return [Boolean, nil] If I(True) storage domain will be formatted after removing it from oVirt.,This parameter is relevant only when C(state) is I(absent).
        attribute :format
        validates :format, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
