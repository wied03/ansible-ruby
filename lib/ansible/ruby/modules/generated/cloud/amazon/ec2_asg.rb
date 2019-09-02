# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Can create or delete AWS Autoscaling Groups
      # Works with the ec2_lc module to manage Launch Configurations
      class Ec2_asg < Base
        # @return [:present, :absent, nil] register or deregister the instance
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Unique name for group to be created or deleted
        attribute :name
        validates :name, presence: true, type: String

        # @return [Array<String>, String, nil] List of ELB names to use for the group. Use for classic load balancers.
        attribute :load_balancers
        validates :load_balancers, type: TypeGeneric.new(String)

        # @return [Object, nil] List of target group ARNs to use for the group. Use for application load balancers.
        attribute :target_group_arns

        # @return [Array<String>, String, nil] List of availability zone names in which to create the group.  Defaults to all the availability zones in the region if vpc_zone_identifier is not set.
        attribute :availability_zones
        validates :availability_zones, type: TypeGeneric.new(String)

        # @return [String] Name of the Launch configuration to use for the group. See the ec2_lc module for managing these. If unspecified then the current group value will be used.
        attribute :launch_config_name
        validates :launch_config_name, presence: true, type: String

        # @return [Integer, nil] Minimum number of instances in group, if unspecified then the current group value will be used.
        attribute :min_size
        validates :min_size, type: Integer

        # @return [Integer, nil] Maximum number of instances in group, if unspecified then the current group value will be used.
        attribute :max_size
        validates :max_size, type: Integer

        # @return [Object, nil] Physical location of your cluster placement group created in Amazon EC2.
        attribute :placement_group

        # @return [Integer, nil] Desired number of instances in group, if unspecified then the current group value will be used.
        attribute :desired_capacity
        validates :desired_capacity, type: Integer

        # @return [String, nil] In a rolling fashion, replace all instances with an old launch configuration with one from the current launch configuration.
        attribute :replace_all_instances
        validates :replace_all_instances, type: String

        # @return [Integer, nil] Number of instances you'd like to replace at a time.  Used with replace_all_instances.
        attribute :replace_batch_size
        validates :replace_batch_size, type: Integer

        # @return [Array<String>, String, nil] List of instance_ids belonging to the named ASG that you would like to terminate and be replaced with instances matching the current launch configuration.
        attribute :replace_instances
        validates :replace_instances, type: TypeGeneric.new(String)

        # @return [String, nil] Check to make sure instances that are being replaced with replace_instances do not already have the current launch_config.
        attribute :lc_check
        validates :lc_check, type: String

        # @return [Array<String>, String, nil] List of VPC subnets to use
        attribute :vpc_zone_identifier
        validates :vpc_zone_identifier, type: TypeGeneric.new(String)

        # @return [Array<Hash>, Hash, nil] A list of tags to add to the Auto Scale Group. Optional key is 'propagate_at_launch', which defaults to true.
        attribute :tags
        validates :tags, type: TypeGeneric.new(Hash)

        # @return [String, nil] Length of time in seconds after a new EC2 instance comes into service that Auto Scaling starts checking its health.
        attribute :health_check_period
        validates :health_check_period, type: String

        # @return [:EC2, :ELB, nil] The service you want the health status from, Amazon EC2 or Elastic Load Balancer.
        attribute :health_check_type
        validates :health_check_type, expression_inclusion: {:in=>[:EC2, :ELB], :message=>"%{value} needs to be :EC2, :ELB"}, allow_nil: true

        # @return [String, nil] The number of seconds after a scaling activity completes before another can begin.
        attribute :default_cooldown
        validates :default_cooldown, type: String

        # @return [Integer, nil] How long to wait for instances to become viable when replaced.  If you experience the error "Waited too long for ELB instances to be healthy", try increasing this value.
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [String, nil] Wait for the ASG instances to be in a ready state before exiting.  If instances are behind an ELB, it will wait until the ELB determines all instances have a lifecycle_state of  "InService" and  a health_status of "Healthy".
        attribute :wait_for_instances
        validates :wait_for_instances, type: String

        # @return [:OldestInstance, :NewestInstance, :OldestLaunchConfiguration, :ClosestToNextInstanceHour, :Default, nil] An ordered list of criteria used for selecting instances to be removed from the Auto Scaling group when reducing capacity.,For 'Default', when used to create a new autoscaling group, the "Default"i value is used. When used to change an existent autoscaling group, the current termination policies are maintained.
        attribute :termination_policies
        validates :termination_policies, expression_inclusion: {:in=>[:OldestInstance, :NewestInstance, :OldestLaunchConfiguration, :ClosestToNextInstanceHour, :Default], :message=>"%{value} needs to be :OldestInstance, :NewestInstance, :OldestLaunchConfiguration, :ClosestToNextInstanceHour, :Default"}, allow_nil: true

        # @return [Object, nil] A SNS topic ARN to send auto scaling notifications to.
        attribute :notification_topic

        # @return [String, nil] A list of auto scaling events to trigger notifications on.
        attribute :notification_types
        validates :notification_types, type: String

        # @return [:Launch, :Terminate, :HealthCheck, :ReplaceUnhealthy, :AZRebalance, :AlarmNotification, :ScheduledActions, :AddToLoadBalancer, nil] A list of scaling processes to suspend.
        attribute :suspend_processes
        validates :suspend_processes, expression_inclusion: {:in=>[:Launch, :Terminate, :HealthCheck, :ReplaceUnhealthy, :AZRebalance, :AlarmNotification, :ScheduledActions, :AddToLoadBalancer], :message=>"%{value} needs to be :Launch, :Terminate, :HealthCheck, :ReplaceUnhealthy, :AZRebalance, :AlarmNotification, :ScheduledActions, :AddToLoadBalancer"}, allow_nil: true

        # @return [:yes, :no, nil] Enable ASG metrics collection
        attribute :metrics_collection
        validates :metrics_collection, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] When metrics_collection is enabled this will determine granularity of metrics collected by CloudWatch
        attribute :metrics_granularity
        validates :metrics_granularity, type: String

        # @return [String, nil] List of autoscaling metrics to collect when enabling metrics_collection
        attribute :metrics_list
        validates :metrics_list, type: String
      end
    end
  end
end
