# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # creates an EBS volume and optionally attaches it to an instance. If both an instance ID and a device name is given and the instance has a device at the device name, then no volume is created and no attachment is made. This module has a dependency on python-boto.
      class Ec2_vol < Base
        # @return [String, nil] instance ID if you wish to attach the volume. Since 1.9 you can set to None to detach.
        attribute :instance
        validates :instance, type: String

        # @return [String, nil] volume Name tag if you wish to attach an existing volume (requires instance)
        attribute :name
        validates :name, type: String

        # @return [String, nil] volume id if you wish to attach an existing volume (requires instance) or remove an existing volume
        attribute :id
        validates :id, type: String

        # @return [Integer, nil] size of volume (in GB) to create.
        attribute :volume_size
        validates :volume_size, type: Integer

        # @return [String, nil] Type of EBS volume; standard (magnetic), gp2 (SSD), io1 (Provisioned IOPS), st1 (Throughput Optimized HDD), sc1 (Cold HDD). "Standard" is the old EBS default and continues to remain the Ansible default for backwards compatibility.
        attribute :volume_type
        validates :volume_type, type: String

        # @return [Integer, nil] the provisioned IOPs you want to associate with this volume (integer).
        attribute :iops
        validates :iops, type: Integer

        # @return [String, nil] Enable encryption at rest for this volume.
        attribute :encrypted
        validates :encrypted, type: String

        # @return [Object, nil] Specify the id of the KMS key to use.
        attribute :kms_key_id

        # @return [String, nil] device id to override device mapping. Assumes /dev/sdf for Linux/UNIX and /dev/xvdf for Windows.
        attribute :device_name
        validates :device_name, type: String

        # @return [:yes, :no, nil] When set to "yes", the volume will be deleted upon instance termination.
        attribute :delete_on_termination
        validates :delete_on_termination, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] zone in which to create the volume, if unset uses the zone the instance is in (if set)
        attribute :zone
        validates :zone, type: String

        # @return [String, nil] snapshot ID on which to base the volume
        attribute :snapshot
        validates :snapshot, type: String

        # @return [:yes, :no, nil] When set to "no", SSL certificates will not be validated for boto versions >= 2.6.0.
        attribute :validate_certs
        validates :validate_certs, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:absent, :present, :list, nil] whether to ensure the volume is present or absent, or to list existing volumes (The C(list) option was added in version 1.8).
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :list], :message=>"%{value} needs to be :absent, :present, :list"}, allow_nil: true

        # @return [Object, nil] tag:value pairs to add to the volume after creation
        attribute :tags
      end
    end
  end
end
