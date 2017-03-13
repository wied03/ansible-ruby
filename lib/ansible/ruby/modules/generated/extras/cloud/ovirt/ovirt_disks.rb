# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage Virtual Machine and floating disks in oVirt.
      class Ovirt_disks < Base
        # @return [Object, nil] ID of the disk to manage. Either C(id) or C(name) is required.
        attribute :id

        # @return [String, nil] Name of the disk to manage. Either C(id) or C(name)/C(alias) is required.
        attribute :name
        validates :name, type: String

        # @return [String, nil] Name of the Virtual Machine to manage. Either C(vm_id) or C(vm_name) is required if C(state) is I(attached) or I(detached).
        attribute :vm_name
        validates :vm_name, type: String

        # @return [Object, nil] ID of the Virtual Machine to manage. Either C(vm_id) or C(vm_name) is required if C(state) is I(attached) or I(detached).
        attribute :vm_id

        # @return [:present, :absent, :attached, :detached, nil] Should the Virtual Machine disk be present/absent/attached/detached.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :attached, :detached], :message=>"%{value} needs to be :present, :absent, :attached, :detached"}, allow_nil: true

        # @return [String, nil] Size of the disk. Size should be specified using IEC standard units. For example 10GiB, 1024MiB, etc.
        attribute :size
        validates :size, type: String

        # @return [:virtio, :ide, :virtio_scsi, nil] Driver of the storage interface.
        attribute :interface
        validates :interface, inclusion: {:in=>[:virtio, :ide, :virtio_scsi], :message=>"%{value} needs to be :virtio, :ide, :virtio_scsi"}, allow_nil: true

        # @return [:raw, :cow, nil] Format of the disk. Either copy-on-write or raw.
        attribute :format
        validates :format, inclusion: {:in=>[:raw, :cow], :message=>"%{value} needs to be :raw, :cow"}, allow_nil: true

        # @return [Object, nil] Storage domain name where disk should be created. By default storage is chosen by oVirt engine.
        attribute :storage_domain

        # @return [Object, nil] Disk profile name to be attached to disk. By default profile is chosen by oVirt engine.
        attribute :profile

        # @return [Object, nil] I(True) if the disk should be bootable. By default when disk is created it isn't bootable.
        attribute :bootable

        # @return [Object, nil] I(True) if the disk should be shareable. By default when disk is created it isn't shareable.
        attribute :shareable

        # @return [Hash, nil] Dictionary which describes LUN to be directly attached to VM:,C(address) - Address of the storage server. Used by iSCSI.,C(port) - Port of the storage server. Used by iSCSI.,C(target) - iSCSI target.,C(lun_id) - LUN id.,C(username) - CHAP Username to be used to access storage server. Used by iSCSI.,C(password) - CHAP Password of the user to be used to access storage server. Used by iSCSI.,C(storage_type) - Storage type either I(fcp) or I(iscsi).
        attribute :logical_unit
        validates :logical_unit, type: Hash
      end
    end
  end
end
