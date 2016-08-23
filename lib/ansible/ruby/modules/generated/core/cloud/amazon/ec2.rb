# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ec2 < Base
        # @return [String] key pair to use on the instance
        attribute :key_name
        validates :key_name, type: String

        # @return [String] security group (or list of groups) to use with the instance
        attribute :group
        validates :group, type: String

        # @return [String] security group id (or list of ids) to use with the instance
        attribute :group_id
        validates :group_id, type: String

        # @return [String] The AWS region to use.  Must be specified if ec2_url is not used. If not specified then the value of the EC2_REGION environment variable, if any, is used. See U(http://docs.aws.amazon.com/general/latest/gr/rande.html#ec2_region)
        attribute :region
        validates :region, type: String

        # @return [Object] AWS availability zone in which to launch the instance
        attribute :zone

        # @return [String] instance type to use for the instance, see U(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html)
        attribute :instance_type
        validates :instance_type, presence: true, type: String

        # @return [:default, :dedicated, nil] An instance with a tenancy of "dedicated" runs on single-tenant hardware and can only be launched into a VPC. Note that to use dedicated tenancy you MUST specify a vpc_subnet_id as well. Dedicated tenancy is not available for EC2 "micro" instances.
        attribute :tenancy
        validates :tenancy, inclusion: {:in=>[:default, :dedicated], :message=>"%{value} needs to be :default, :dedicated"}, allow_nil: true

        # @return [Float] Maximum spot price to bid, If not set a regular on-demand instance is requested. A spot request is made with this maximum bid. When it is filled, the instance is started.
        attribute :spot_price
        validates :spot_price, type: Float

        # @return [:"one-time", :persistent, nil] Type of spot request; one of "one-time" or "persistent". Defaults to "one-time" if not supplied.
        attribute :spot_type
        validates :spot_type, inclusion: {:in=>[:"one-time", :persistent], :message=>"%{value} needs to be :\"one-time\", :persistent"}, allow_nil: true

        # @return [String] I(ami) ID to use for the instance
        attribute :image
        validates :image, presence: true, type: String

        # @return [Object] kernel I(eki) to use for the instance
        attribute :kernel

        # @return [Object] ramdisk I(eri) to use for the instance
        attribute :ramdisk

        # @return [:yes, :no, nil] wait for the instance to be 'running' before returning.  Does not wait for SSH, see 'wait_for' example for details.
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Fixnum] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Fixnum

        # @return [Fixnum] how long to wait for the spot instance request to be fulfilled
        attribute :spot_wait_timeout
        validates :spot_wait_timeout, type: Fixnum

        # @return [Fixnum] number of instances to launch
        attribute :count
        validates :count, type: Fixnum

        # @return [:yes, :no, nil] enable detailed monitoring (CloudWatch) for instance
        attribute :monitoring
        validates :monitoring, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] opaque blob of data which is made available to the ec2 instance
        attribute :user_data

        # @return [Hash] a hash/dictionary of tags to add to the new instance or for starting/stopping instance by tag; '{"key":"value"}' and '{"key":"value","key":"value"}'
        attribute :instance_tags
        validates :instance_tags, type: Hash

        # @return [Object] placement group for the instance when using EC2 Clustered Compute
        attribute :placement_group

        # @return [String] the subnet ID in which to launch the instance (VPC)
        attribute :vpc_subnet_id
        validates :vpc_subnet_id, type: String

        # @return [:yes, :no, nil] when provisioning within vpc, assign a public IP address. Boto library must be 2.13.0+
        attribute :assign_public_ip
        validates :assign_public_ip, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] the private ip address to assign the instance (from the vpc subnet)
        attribute :private_ip

        # @return [Object] Name of the IAM instance profile to use. Boto library must be 2.5.0+
        attribute :instance_profile_name

        # @return [Array] list of instance ids, currently used for states: absent, running, stopped
        attribute :instance_ids
        validates :instance_ids, type: Array

        # @return [:yes, :no, nil] Enable or Disable the Source/Destination checks (for NAT instances and Virtual Routers)
        attribute :source_dest_check
        validates :source_dest_check, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Enable or Disable the Termination Protection
        attribute :termination_protection
        validates :termination_protection, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent, :running, :stopped, nil] create or terminate instances
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :running, :stopped], :message=>"%{value} needs to be :present, :absent, :running, :stopped"}, allow_nil: true

        # @return [Array] a list of hash/dictionaries of volumes to add to the new instance; '[{"key":"value", "key":"value"}]'; keys allowed are - device_name (str; required), delete_on_termination (bool; False), device_type (deprecated), ephemeral (str), encrypted (bool; False), snapshot (str), volume_type (str), iops (int) - device_type is deprecated use volume_type, iops must be set when volume_type='io1', ephemeral and snapshot are mutually exclusive.
        attribute :volumes
        validates :volumes, type: Array

        # @return [String] whether instance is using optimized EBS volumes, see U(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html)
        attribute :ebs_optimized
        validates :ebs_optimized, type: String

        # @return [Fixnum] An integer value which indicates how many instances that match the 'count_tag' parameter should be running. Instances are either created or terminated based on this value.
        attribute :exact_count
        validates :exact_count, type: Fixnum

        # @return [Array] Used with 'exact_count' to determine how many nodes based on a specific tag criteria should be running.  This can be expressed in multiple ways and is shown in the EXAMPLES section.  For instance, one can request 25 servers that are tagged with "class=webserver". The specified tag must already exist or be passed in as the 'instance_tags' option.
        attribute :count_tag
        validates :count_tag, type: Array

        # @return [Array] A list of existing network interfaces to attach to the instance at launch. When specifying existing network interfaces, none of the assign_public_ip, private_ip, vpc_subnet_id, group, or group_id parameters may be used. (Those parameters are for creating a new network interface at launch.)
        attribute :network_interfaces
        validates :network_interfaces, type: Array

        # @return [String] Launch group for spot request, see U(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/how-spot-instances-work.html#spot-launch-group)
        attribute :spot_launch_group
        validates :spot_launch_group, type: String
      end
    end
  end
end
