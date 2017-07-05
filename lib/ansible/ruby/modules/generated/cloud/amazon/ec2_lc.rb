# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Can create or delete AWS Autoscaling Configurations
      # Works with the ec2_asg module to manage Autoscaling Groups
      class Ec2_lc < Base
        # @return [:present, :absent] register or deregister the instance
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] Unique name for configuration
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] instance type to use for the instance
        attribute :instance_type
        validates :instance_type, presence: true, type: String

        # @return [String, nil] The AMI unique identifier to be used for the group
        attribute :image_id
        validates :image_id, type: String

        # @return [String, nil] The SSH key name to be used for access to managed instances
        attribute :key_name
        validates :key_name, type: String

        # @return [Array<String>, String, nil] A list of security groups to apply to the instances. For VPC instances, specify security group IDs. For EC2-Classic, specify either security group names or IDs.
        attribute :security_groups
        validates :security_groups, type: TypeGeneric.new(String)

        # @return [Array<Hash>, Hash, nil] a list of volume dicts, each containing device name and optionally ephemeral id or snapshot id. Size and type (and number of iops for io device type) must be specified for a new volume or a root volume, and may be passed for a snapshot volume. For any volume, a volume size less than 1 will be interpreted as a request not to create the volume.
        attribute :volumes
        validates :volumes, type: TypeGeneric.new(Hash)

        # @return [Object, nil] opaque blob of data which is made available to the ec2 instance. Mutually exclusive with I(user_data_path).
        attribute :user_data

        # @return [Object, nil] Path to the file that contains userdata for the ec2 instances. Mutually exclusive with I(user_data).
        attribute :user_data_path

        # @return [Object, nil] Kernel id for the EC2 instance
        attribute :kernel_id

        # @return [Object, nil] The spot price you are bidding. Only applies for an autoscaling group with spot instances.
        attribute :spot_price

        # @return [Boolean, nil] whether instances in group are launched with detailed monitoring.
        attribute :instance_monitoring
        validates :instance_monitoring, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Used for Auto Scaling groups that launch instances into an Amazon Virtual Private Cloud. Specifies whether to assign a public IP address to each instance launched in a Amazon VPC.
        attribute :assign_public_ip

        # @return [Object, nil] A RAM disk id for the instances.
        attribute :ramdisk_id

        # @return [Object, nil] The name or the Amazon Resource Name (ARN) of the instance profile associated with the IAM role for the instances.
        attribute :instance_profile_name

        # @return [Boolean, nil] Specifies whether the instance is optimized for EBS I/O (true) or not (false).
        attribute :ebs_optimized
        validates :ebs_optimized, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Id of ClassicLink enabled VPC
        attribute :classic_link_vpc_id

        # @return [Object, nil] A list of security group id's with which to associate the ClassicLink VPC instances.
        attribute :classic_link_vpc_security_groups
      end
    end
  end
end
