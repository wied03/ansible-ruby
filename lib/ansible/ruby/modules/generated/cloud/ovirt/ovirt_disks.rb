# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage Virtual Machine and floating disks in oVirt/RHV.
      class Ovirt_disk < Base
        # @return [String, nil] ID of the disk to manage. Either C(id) or C(name) is required.
        attribute :id
        validates :id, type: String

        # @return [String, nil] Name of the disk to manage. Either C(id) or C(name)/C(alias) is required.
        attribute :name
        validates :name, type: String

        # @return [String, nil] Description of the disk image to manage.
        attribute :description
        validates :description, type: String

        # @return [String, nil] Name of the Virtual Machine to manage. Either C(vm_id) or C(vm_name) is required if C(state) is I(attached) or I(detached).
        attribute :vm_name
        validates :vm_name, type: String

        # @return [Object, nil] ID of the Virtual Machine to manage. Either C(vm_id) or C(vm_name) is required if C(state) is I(attached) or I(detached).
        attribute :vm_id

        # @return [:present, :absent, :attached, :detached, nil] Should the Virtual Machine disk be present/absent/attached/detached.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :attached, :detached], :message=>"%{value} needs to be :present, :absent, :attached, :detached"}, allow_nil: true

        # @return [String, nil] Path on a file system where disk should be downloaded.,Note that you must have an valid oVirt/RHV engine CA in your system trust store or you must provide it in C(ca_file) parameter.,Note that the disk is not downloaded when the file already exists, but you can forcibly download the disk when using C(force) I (true).
        attribute :download_image_path
        validates :download_image_path, type: String

        # @return [Object, nil] Path to disk image, which should be uploaded.,Note that currently we support only compatibility version 0.10 of the qcow disk.,Note that you must have an valid oVirt/RHV engine CA in your system trust store or you must provide it in C(ca_file) parameter.,Note that there is no reliable way to achieve idempotency, so if you want to upload the disk even if the disk with C(id) or C(name) exists, then please use C(force) I(true). If you will use C(force) I(false), which is default, then the disk image won't be uploaded.
        attribute :upload_image_path

        # @return [String, nil] Size of the disk. Size should be specified using IEC standard units. For example 10GiB, 1024MiB, etc.,Size can be only increased, not decreased.
        attribute :size
        validates :size, type: String

        # @return [:virtio, :ide, :virtio_scsi, nil] Driver of the storage interface.,It's required parameter when creating the new disk.
        attribute :interface
        validates :interface, expression_inclusion: {:in=>[:virtio, :ide, :virtio_scsi], :message=>"%{value} needs to be :virtio, :ide, :virtio_scsi"}, allow_nil: true

        # @return [:raw, :cow, nil] Specify format of the disk.,Note that this option isn't idempotent as it's not currently possible to change format of the disk via API.
        attribute :format
        validates :format, expression_inclusion: {:in=>[:raw, :cow], :message=>"%{value} needs to be :raw, :cow"}, allow_nil: true

        # @return [Object, nil] I(True) if the disk should be sparse (also known as I(thin provision)). If the parameter is omitted, cow disks will be created as sparse and raw disks as I(preallocated),Note that this option isn't idempotent as it's not currently possible to change sparseness of the disk via API.
        attribute :sparse

        # @return [String, nil] Storage domain name where disk should be created. By default storage is chosen by oVirt/RHV engine.
        attribute :storage_domain
        validates :storage_domain, type: String

        # @return [Object, nil] Storage domain names where disk should be copied.,C(**IMPORTANT**),There is no reliable way to achieve idempotency, so every time you specify this parameter the disks are copied, so please handle your playbook accordingly to not copy the disks all the time. This is valid only for VM and floating disks, template disks works as expected.
        attribute :storage_domains

        # @return [Object, nil] Please take a look at C(image_path) documentation to see the correct usage of this parameter.
        attribute :force

        # @return [Object, nil] Disk profile name to be attached to disk. By default profile is chosen by oVirt/RHV engine.
        attribute :profile

        # @return [String, nil] Disk quota ID to be used for disk. By default quota is chosen by oVirt/RHV engine.
        attribute :quota_id
        validates :quota_id, type: String

        # @return [Object, nil] I(True) if the disk should be bootable. By default when disk is created it isn't bootable.
        attribute :bootable

        # @return [Object, nil] I(True) if the disk should be shareable. By default when disk is created it isn't shareable.
        attribute :shareable

        # @return [Hash, nil] Dictionary which describes LUN to be directly attached to VM:,C(address) - Address of the storage server. Used by iSCSI.,C(port) - Port of the storage server. Used by iSCSI.,C(target) - iSCSI target.,C(lun_id) - LUN id.,C(username) - CHAP Username to be used to access storage server. Used by iSCSI.,C(password) - CHAP Password of the user to be used to access storage server. Used by iSCSI.,C(storage_type) - Storage type either I(fcp) or I(iscsi).
        attribute :logical_unit
        validates :logical_unit, type: Hash

        # @return [Object, nil] I(True) if the disk should be sparsified.,Sparsification frees space in the disk image that is not used by its filesystem. As a result, the image will occupy less space on the storage.,Note that this parameter isn't idempotent, as it's not possible to check if the disk should be or should not be sparsified.
        attribute :sparsify

        # @return [Object, nil] Name of the openstack volume type. This is valid when working with cinder.
        attribute :openstack_volume_type

        # @return [String, nil] When C(state) is I(exported) disk is exported to given Glance image provider.,C(**IMPORTANT**),There is no reliable way to achieve idempotency, so every time you specify this parameter the disk is exported, so please handle your playbook accordingly to not export the disk all the time. This option is valid only for template disks.
        attribute :image_provider
        validates :image_provider, type: String
      end
    end
  end
end
