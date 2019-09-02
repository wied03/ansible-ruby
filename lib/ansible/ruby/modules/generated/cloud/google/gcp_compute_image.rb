# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Represents an Image resource.
      # Google Compute Engine uses operating system images to create the root persistent disks for your instances. You specify an image when you create an instance. Images contain a boot loader, an operating system, and a root file system. Linux operating system images are also capable of running containers on Compute Engine.
      # Images can be either public or custom.
      # Public images are provided and maintained by Google, open-source communities, and third-party vendors. By default, all projects have access to these images and can use them to create instances.  Custom images are available only to your project. You can create a custom image from root persistent disks and other images. Then, use the custom image to create an instance.
      class Gcp_compute_image < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] An optional description of this resource. Provide this property when you create the resource.
        attribute :description

        # @return [Object, nil] Size of the image when restored onto a persistent disk (in GB).
        attribute :disk_size_gb

        # @return [Object, nil] The name of the image family to which this image belongs. You can create disks by specifying an image family instead of a specific image name. The image family always returns its latest image that is not deprecated. The name of the image family must comply with RFC1035.
        attribute :family

        # @return [Object, nil] A list of features to enable on the guest OS. Applicable for bootable images only. Currently, only one feature can be enabled, VIRTIO_SCSI_MULTIQUEUE, which allows each virtual CPU to have its own queue. For Windows images, you can only enable VIRTIO_SCSI_MULTIQUEUE on images with driver version 1.2.0.1621 or higher. Linux images with kernel versions 3.17 and higher will support VIRTIO_SCSI_MULTIQUEUE.,For new Windows images, the server might also populate this field with the value WINDOWS, to indicate that this is a Windows image.,This value is purely informational and does not enable or disable any features.
        attribute :guest_os_features

        # @return [Object, nil] Encrypts the image using a customer-supplied encryption key.,After you encrypt an image with a customer-supplied key, you must provide the same key if you use the image later (e.g. to create a disk from the image) .
        attribute :image_encryption_key

        # @return [Object, nil] Any applicable license URI.
        attribute :licenses

        # @return [String] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] The parameters of the raw disk image.
        attribute :raw_disk

        # @return [String, nil] Refers to a gcompute_disk object You must provide either this property or the rawDisk.source property but not both to create an image.
        attribute :source_disk
        validates :source_disk, type: String

        # @return [Object, nil] The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
        attribute :source_disk_encryption_key

        # @return [Object, nil] The ID value of the disk used to create this image. This value may be used to determine whether the image was taken from the current or a previous instance of a given disk name.
        attribute :source_disk_id

        # @return [:RAW, nil] The type of the image used to create this disk. The default and only value is RAW .
        attribute :source_type
        validates :source_type, expression_inclusion: {:in=>[:RAW], :message=>"%{value} needs to be :RAW"}, allow_nil: true
      end
    end
  end
end
