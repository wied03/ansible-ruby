# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Persistent disks are durable storage devices that function similarly to the physical disks in a desktop or a server. Compute Engine manages the hardware behind these devices to ensure data redundancy and optimize performance for you. Persistent disks are available as either standard hard disk drives (HDD) or solid-state drives (SSD).
      # Persistent disks are located independently from your virtual machine instances, so you can detach or move persistent disks to keep your data even after you delete your instances. Persistent disk performance scales automatically with size, so you can resize your existing persistent disks or add more persistent disks to an instance to meet your performance and storage space requirements.
      # Add a persistent disk to your instance when you need reliable and affordable storage with consistent performance characteristics.
      class Gcp_compute_disk < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] An optional description of this resource. Provide this property when you create the resource.
        attribute :description

        # @return [Object, nil] Labels to apply to this disk.  A list of key->value pairs.
        attribute :labels

        # @return [Object, nil] Any applicable publicly visible licenses.
        attribute :licenses

        # @return [String] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer, nil] Size of the persistent disk, specified in GB. You can specify this field when creating a persistent disk using the sourceImage or sourceSnapshot parameter, or specify it alone to create an empty persistent disk.,If you specify this field along with sourceImage or sourceSnapshot, the value of sizeGb must not be less than the size of the sourceImage or the size of the snapshot.
        attribute :size_gb
        validates :size_gb, type: Integer

        # @return [Object, nil] URL of the disk type resource describing which disk type to use to create the disk. Provide this when creating the disk.
        attribute :type

        # @return [Object, nil] The source image used to create this disk. If the source image is deleted, this field will not be set.,To create a disk with one of the public operating system images, specify the image by its family name. For example, specify family/debian-8 to use the latest Debian 8 image:  projects/debian-cloud/global/images/family/debian-8  Alternatively, use a specific version of a public operating system image:  projects/debian-cloud/global/images/debian-8-jessie-vYYYYMMDD  To create a disk with a private image that you created, specify the image name in the following format:  global/images/my-private-image  You can also specify a private image by its image family, which returns the latest version of the image in that family. Replace the image name with family/family-name:  global/images/family/my-private-family .
        attribute :source_image

        # @return [String] A reference to the zone where the disk resides.
        attribute :zone
        validates :zone, presence: true, type: String

        # @return [Object, nil] The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key.
        attribute :source_image_encryption_key

        # @return [Hash, nil] Encrypts the disk using a customer-supplied encryption key.,After you encrypt a disk with a customer-supplied key, you must provide the same key if you use the disk later (e.g. to create a disk snapshot or an image, or to attach the disk to a virtual machine).,Customer-supplied encryption keys do not protect access to metadata of the disk.,If you do not provide an encryption key when creating the disk, then the disk will be encrypted using an automatically generated key and you do not need to provide a key to use the disk later.
        attribute :disk_encryption_key
        validates :disk_encryption_key, type: Hash

        # @return [Object, nil] The source snapshot used to create this disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values: * `U(https://www.googleapis.com/compute/v1/projects/project/global/snapshots/snapshot`) * `projects/project/global/snapshots/snapshot` * `global/snapshots/snapshot` .
        attribute :source_snapshot

        # @return [Object, nil] The customer-supplied encryption key of the source snapshot. Required if the source snapshot is protected by a customer-supplied encryption key.
        attribute :source_snapshot_encryption_key
      end
    end
  end
end
