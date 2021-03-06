# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates or terminates ec2 instances.
      class Ec2 < Base
        # @return [String, nil] key pair to use on the instance
        attribute :key_name
        validates :key_name, type: String

        # @return [Object, nil] identifier for this instance or set of instances, so that the module will be idempotent with respect to EC2 instances. This identifier is valid for at least 24 hours after the termination of the instance, and should not be reused for another call later on. For details, see the description of client token at U(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).
        attribute :id

        # @return [Array<String>, String, nil] security group (or list of groups) to use with the instance
        attribute :group
        validates :group, type: TypeGeneric.new(String)

        # @return [String, nil] security group id (or list of ids) to use with the instance
        attribute :group_id
        validates :group_id, type: String

        # @return [String, nil] The AWS region to use.  Must be specified if ec2_url is not used. If not specified then the value of the EC2_REGION environment variable, if any, is used. See U(http://docs.aws.amazon.com/general/latest/gr/rande.html#ec2_region)
        attribute :region
        validates :region, type: String

        # @return [Object, nil] AWS availability zone in which to launch the instance
        attribute :zone

        # @return [String] instance type to use for the instance, see U(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html)
        attribute :instance_type
        validates :instance_type, presence: true, type: String

        # @return [:default, :dedicated, nil] An instance with a tenancy of "dedicated" runs on single-tenant hardware and can only be launched into a VPC. Note that to use dedicated tenancy you MUST specify a vpc_subnet_id as well. Dedicated tenancy is not available for EC2 "micro" instances.
        attribute :tenancy
        validates :tenancy, expression_inclusion: {:in=>[:default, :dedicated], :message=>"%{value} needs to be :default, :dedicated"}, allow_nil: true

        # @return [Float, nil] Maximum spot price to bid, If not set a regular on-demand instance is requested. A spot request is made with this maximum bid. When it is filled, the instance is started.
        attribute :spot_price
        validates :spot_price, type: Float

        # @return [:"one-time", :persistent, nil] Type of spot request; one of "one-time" or "persistent". Defaults to "one-time" if not supplied.
        attribute :spot_type
        validates :spot_type, expression_inclusion: {:in=>[:"one-time", :persistent], :message=>"%{value} needs to be :\"one-time\", :persistent"}, allow_nil: true

        # @return [String] I(ami) ID to use for the instance
        attribute :image
        validates :image, presence: true, type: String

        # @return [Object, nil] kernel I(eki) to use for the instance
        attribute :kernel

        # @return [Object, nil] ramdisk I(eri) to use for the instance
        attribute :ramdisk

        # @return [:yes, :no, nil] wait for the instance to reach its desired state before returning.  Does not wait for SSH, see 'wait_for_connection' example for details.
        attribute :wait
        validates :wait, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [Integer, nil] how long to wait for the spot instance request to be fulfilled
        attribute :spot_wait_timeout
        validates :spot_wait_timeout, type: Integer

        # @return [Integer, nil] number of instances to launch
        attribute :count
        validates :count, type: Integer

        # @return [:yes, :no, nil] enable detailed monitoring (CloudWatch) for instance
        attribute :monitoring
        validates :monitoring, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] opaque blob of data which is made available to the ec2 instance
        attribute :user_data

        # @return [Hash, nil] a hash/dictionary of tags to add to the new instance or for starting/stopping instance by tag; '{"key":"value"}' and '{"key":"value","key":"value"}'
        attribute :instance_tags
        validates :instance_tags, type: Hash

        # @return [Object, nil] placement group for the instance when using EC2 Clustered Compute
        attribute :placement_group

        # @return [String, nil] the subnet ID in which to launch the instance (VPC)
        attribute :vpc_subnet_id
        validates :vpc_subnet_id, type: String

        # @return [Symbol, nil] when provisioning within vpc, assign a public IP address. Boto library must be 2.13.0+
        attribute :assign_public_ip
        validates :assign_public_ip, type: Symbol

        # @return [Object, nil] the private ip address to assign the instance (from the vpc subnet)
        attribute :private_ip

        # @return [Object, nil] Name of the IAM instance profile (i.e. what the EC2 console refers to as an "IAM Role") to use. Boto library must be 2.5.0+
        attribute :instance_profile_name

        # @return [Array<String>, String, nil] list of instance ids, currently used for states: absent, running, stopped
        attribute :instance_ids
        validates :instance_ids, type: TypeGeneric.new(String)

        # @return [Symbol, nil] Enable or Disable the Source/Destination checks (for NAT instances and Virtual Routers). When initially creating an instance the EC2 API defaults this to True.
        attribute :source_dest_check
        validates :source_dest_check, type: Symbol

        # @return [:yes, :no, nil] Enable or Disable the Termination Protection
        attribute :termination_protection
        validates :termination_protection, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:stop, :terminate, nil] Set whether AWS will Stop or Terminate an instance on shutdown. This parameter is ignored when using instance-store images (which require termination on shutdown).
        attribute :instance_initiated_shutdown_behavior
        validates :instance_initiated_shutdown_behavior, expression_inclusion: {:in=>[:stop, :terminate], :message=>"%{value} needs to be :stop, :terminate"}, allow_nil: true

        # @return [:present, :absent, :running, :restarted, :stopped, nil] create, terminate, start, stop or restart instances. The state 'restarted' was added in 2.2
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :running, :restarted, :stopped], :message=>"%{value} needs to be :present, :absent, :running, :restarted, :stopped"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] a list of hash/dictionaries of volumes to add to the new instance; '[{"key":"value", "key":"value"}]'; keys allowed are - device_name (str; required), delete_on_termination (bool; False), device_type (deprecated), ephemeral (str), encrypted (bool; False), snapshot (str), volume_type (str), volume_size (int, GB), iops (int) - device_type is deprecated use volume_type, iops must be set when volume_type='io1', ephemeral and snapshot are mutually exclusive.
        attribute :volumes
        validates :volumes, type: TypeGeneric.new(Hash)

        # @return [String, nil] whether instance is using optimized EBS volumes, see U(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html)
        attribute :ebs_optimized
        validates :ebs_optimized, type: String

        # @return [Integer, nil] An integer value which indicates how many instances that match the 'count_tag' parameter should be running. Instances are either created or terminated based on this value.
        attribute :exact_count
        validates :exact_count, type: Integer

        # @return [Hash, Array<String>, String, nil] Used with 'exact_count' to determine how many nodes based on a specific tag criteria should be running. This can be expressed in multiple ways and is shown in the EXAMPLES section.  For instance, one can request 25 servers that are tagged with "class=webserver". The specified tag must already exist or be passed in as the 'instance_tags' option.
        attribute :count_tag
        validates :count_tag, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] A list of existing network interfaces to attach to the instance at launch. When specifying existing network interfaces, none of the assign_public_ip, private_ip, vpc_subnet_id, group, or group_id parameters may be used. (Those parameters are for creating a new network interface at launch.)
        attribute :network_interfaces
        validates :network_interfaces, type: TypeGeneric.new(String)

        # @return [String, nil] Launch group for spot request, see U(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/how-spot-instances-work.html#spot-launch-group)
        attribute :spot_launch_group
        validates :spot_launch_group, type: String
      end
    end
  end
end
