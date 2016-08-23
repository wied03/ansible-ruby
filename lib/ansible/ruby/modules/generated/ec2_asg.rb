# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ec2_asg < Base
        # @return [Object] register or deregister the instance
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] Unique name for group to be created or deleted
        attribute :name
        validates :name, presence: true, type: String

        # @return [Array] List of ELB names to use for the group
        attribute :load_balancers
        validates :load_balancers, type: Array

        # @return [Array] List of availability zone names in which to create the group.  Defaults to all the availability zones in the region if vpc_zone_identifier is not set.
        attribute :availability_zones
        validates :availability_zones, type: Array

        # @return [String] Name of the Launch configuration to use for the group. See the ec2_lc module for managing these.
        attribute :launch_config_name
        validates :launch_config_name, presence: true, type: String

        # @return [Fixnum] Minimum number of instances in group, if unspecified then the current group value will be used.
        attribute :min_size
        validates :min_size, type: Fixnum

        # @return [Fixnum] Maximum number of instances in group, if unspecified then the current group value will be used.
        attribute :max_size
        validates :max_size, type: Fixnum

        # @return [Fixnum] Desired number of instances in group, if unspecified then the current group value will be used.
        attribute :desired_capacity
        validates :desired_capacity, type: Fixnum

        # @return [TrueClass] In a rolling fashion, replace all instances with an old launch configuration with one from the current launch configuration.
        attribute :replace_all_instances
        validates :replace_all_instances, type: TrueClass

        # @return [Fixnum] Number of instances you'd like to replace at a time.  Used with replace_all_instances.
        attribute :replace_batch_size
        validates :replace_batch_size, type: Fixnum

        # @return [String] List of instance_ids belonging to the named ASG that you would like to terminate and be replaced with instances matching the current launch configuration.
        attribute :replace_instances
        validates :replace_instances, type: String

        # @return [TrueClass] Check to make sure instances that are being replaced with replace_instances do not aready have the current launch_config.
        attribute :lc_check
        validates :lc_check, type: TrueClass

        # @return [String] List of VPC subnets to use
        attribute :vpc_zone_identifier
        validates :vpc_zone_identifier, type: String

        # @return [String] A list of tags to add to the Auto Scale Group. Optional key is 'propagate_at_launch', which defaults to true.
        attribute :tags
        validates :tags, type: String

        # @return [String] Length of time in seconds after a new EC2 instance comes into service that Auto Scaling starts checking its health.
        attribute :health_check_period
        validates :health_check_period, type: String

        # @return [String] The service you want the health status from, Amazon EC2 or Elastic Load Balancer.
        attribute :health_check_type
        validates :health_check_type, inclusion: {:in=>[:EC2, :ELB], :message=>"%{value} needs to be :EC2, :ELB"}, allow_nil: true

        # @return [String] The number of seconds after a scaling activity completes before another can begin.
        attribute :default_cooldown
        validates :default_cooldown, type: String

        # @return [Fixnum] how long before wait instances to become viable when replaced.  Used in concjunction with instance_ids option.
        attribute :wait_timeout
        validates :wait_timeout, type: Fixnum

        # @return [TrueClass] Wait for the ASG instances to be in a ready state before exiting.  If instances are behind an ELB, it will wait until the ELB determines all instances have a lifecycle_state of  "InService" and  a health_status of "Healthy".
        attribute :wait_for_instances
        validates :wait_for_instances, type: TrueClass

        # @return [String] An ordered list of criteria used for selecting instances to be removed from the Auto Scaling group when reducing capacity.,For 'Default', when used to create a new autoscaling group, the "Default" value is used. When used to change an existent autoscaling group, the current termination policies are mantained
        attribute :termination_policies
        validates :termination_policies, inclusion: {:in=>[:OldestInstance, :NewestInstance, :OldestLaunchConfiguration, :ClosestToNextInstanceHour, :Default], :message=>"%{value} needs to be :OldestInstance, :NewestInstance, :OldestLaunchConfiguration, :ClosestToNextInstanceHour, :Default"}, allow_nil: true
      end
    end
  end
end
