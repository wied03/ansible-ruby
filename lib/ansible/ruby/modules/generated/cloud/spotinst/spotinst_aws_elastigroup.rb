# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Can create, update, or delete Spotinst AWS Elastigroups Launch configuration is part of the elastigroup configuration, so no additional modules are necessary for handling the launch configuration. You will have to have a credentials file in this location - <home>/.spotinst/credentials The credentials file must contain a row that looks like this token = <YOUR TOKEN> Full documentation available at https://help.spotinst.com/hc/en-us/articles/115003530285-Ansible-
      class Spotinst_aws_elastigroup < Base
        # @return [Object, nil] (String) Optional parameter that allows to set a non-default credentials path. Default is ~/.spotinst/credentials
        attribute :credentials_path

        # @return [Object, nil] (String) Optional parameter that allows to set an account-id inside the module configuration By default this is retrieved from the credentials path
        attribute :account_id

        # @return [:availabilityOriented, :costOriented, :balanced] (String) The strategy orientation.
        attribute :availability_vs_cost
        validates :availability_vs_cost, presence: true, inclusion: {:in=>[:availabilityOriented, :costOriented, :balanced], :message=>"%{value} needs to be :availabilityOriented, :costOriented, :balanced"}

        # @return [Object] (List of Objects) a list of hash/dictionaries of Availability Zones that are configured in the elastigroup; '[{"key":"value", "key":"value"}]'; keys allowed are name (String), subnet_id (String), placement_group_name (String),
        attribute :availability_zones
        validates :availability_zones, presence: true

        # @return [Object, nil] (List of Objects) a list of hash/dictionaries of Block Device Mappings for elastigroup instances; You can specify virtual devices and EBS volumes.; '[{"key":"value", "key":"value"}]'; keys allowed are device_name (List of Strings), virtual_name (String), no_device (String), ebs (Object, expects the following keys- delete_on_termination(Boolean), encrypted(Boolean), iops (Integer), snapshot_id(Integer), volume_type(String), volume_size(Integer))
        attribute :block_device_mappings

        # @return [Object, nil] (Object) The Chef integration configuration.; Expects the following keys - chef_server (String), organization (String), user (String), pem_key (String), chef_version (String)
        attribute :chef

        # @return [Object, nil] (Integer) Time for instance to be drained from incoming requests and deregistered from ELB before termination.
        attribute :draining_timeout

        # @return [Object, nil] (Boolean) Enable EBS optimization for supported instances which are not enabled by default.; Note - additional charges will be applied.
        attribute :ebs_optimized

        # @return [Object, nil] (List of Objects) a list of hash/dictionaries of EBS devices to reattach to the elastigroup when available; '[{"key":"value", "key":"value"}]'; keys allowed are - volume_ids (List of Strings), device_name (String)
        attribute :ebs_volume_pool

        # @return [Object, nil] (Object) The ECS integration configuration.; Expects the following key - cluster_name (String)
        attribute :ecs

        # @return [Object, nil] (List of Strings) List of ElasticIps Allocation Ids (Example C(eipalloc-9d4e16f8)) to associate to the group instances
        attribute :elastic_ips

        # @return [Object, nil] (Boolean) In case of no spots available, Elastigroup will launch an On-demand instance instead
        attribute :fallback_to_od

        # @return [Integer, nil] (Integer) The amount of time, in seconds, after the instance has launched to start and check its health.
        attribute :health_check_grace_period
        validates :health_check_grace_period, type: Integer

        # @return [Object, nil] (Integer) Minimal mount of time instance should be unhealthy for us to consider it unhealthy.
        attribute :health_check_unhealthy_duration_before_replacement

        # @return [:ELB, :HCS, :TARGET_GROUP, :MLB, :EC2, nil] (String) The service to use for the health check.
        attribute :health_check_type
        validates :health_check_type, inclusion: {:in=>[:ELB, :HCS, :TARGET_GROUP, :MLB, :EC2], :message=>"%{value} needs to be :ELB, :HCS, :TARGET_GROUP, :MLB, :EC2"}, allow_nil: true

        # @return [Object, nil] (String) The instance profile iamRole name,Only use iam_role_arn, or iam_role_name
        attribute :iam_role_name

        # @return [Object, nil] (String) The instance profile iamRole arn,Only use iam_role_arn, or iam_role_name
        attribute :iam_role_arn

        # @return [Object, nil] (String) The group id if it already exists and you want to update, or delete it. This will not work unless the uniqueness_by field is set to id. When this is set, and the uniqueness_by field is set, the group will either be updated or deleted, but not created.
        attribute :id

        # @return [:image_id, :target, nil] (List of Strings) list of fields on which changes should be ignored when updating
        attribute :ignore_changes
        validates :ignore_changes, inclusion: {:in=>[:image_id, :target], :message=>"%{value} needs to be :image_id, :target"}, allow_nil: true

        # @return [Object] (String) The image Id used to launch the instance.; In case of conflict between Instance type and image type, an error will be returned
        attribute :image_id
        validates :image_id, presence: true

        # @return [Object] (String) Specify a Key Pair to attach to the instances
        attribute :key_pair
        validates :key_pair, presence: true

        # @return [Object, nil] (Object) The Kubernetes integration configuration. Expects the following keys - api_server (String), token (String)
        attribute :kubernetes

        # @return [Object, nil] (String) lifetime period
        attribute :lifetime_period

        # @return [Object, nil] (List of Strings) List of classic ELB names
        attribute :load_balancers

        # @return [Object] (Integer) The upper limit number of instances that you can scale up to
        attribute :max_size
        validates :max_size, presence: true

        # @return [Object, nil] (Object) The Mesosphere integration configuration. Expects the following key - api_server (String)
        attribute :mesosphere

        # @return [Object] (Integer) The lower limit number of instances that you can scale down to
        attribute :min_size
        validates :min_size, presence: true

        # @return [Object] (Boolean) Describes whether instance Enhanced Monitoring is enabled
        attribute :monitoring
        validates :monitoring, presence: true

        # @return [String] (String) Unique name for elastigroup to be created, updated or deleted
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] (List of Objects) a list of hash/dictionaries of network interfaces to add to the elastigroup; '[{"key":"value", "key":"value"}]'; keys allowed are - description (String), device_index (Integer), secondary_private_ip_address_count (Integer), associate_public_ip_address (Boolean), delete_on_termination (Boolean), groups (List of Strings), network_interface_id (String), private_ip_address (String), subnet_id (String), associate_ipv6_address (Boolean), private_ip_addresses (List of Objects, Keys are privateIpAddress (String, required) and primary (Boolean))
        attribute :network_interfaces

        # @return [Object, nil] (Integer) Required if risk is not set,Number of on demand instances to launch. All other instances will be spot instances.; Either set this parameter or the risk parameter
        attribute :on_demand_count

        # @return [Object] (String) On-demand instance type that will be provisioned
        attribute :on_demand_instance_type
        validates :on_demand_instance_type, presence: true

        # @return [Object, nil] (Object) The elastigroup OpsWorks integration configration.; Expects the following key - layer_id (String)
        attribute :opsworks

        # @return [Object, nil] (Object) The Stateful elastigroup configration.; Accepts the following keys - should_persist_root_device (Boolean), should_persist_block_devices (Boolean), should_persist_private_ip (Boolean)
        attribute :persistence

        # @return [:"Linux/UNIX", :"SUSE Linux", :Windows, :"Linux/UNIX (Amazon VPC)", :"SUSE Linux (Amazon VPC)", :Windows] (String) Operation system type._
        attribute :product
        validates :product, presence: true, inclusion: {:in=>[:"Linux/UNIX", :"SUSE Linux", :Windows, :"Linux/UNIX (Amazon VPC)", :"SUSE Linux (Amazon VPC)", :Windows], :message=>"%{value} needs to be :\"Linux/UNIX\", :\"SUSE Linux\", :Windows, :\"Linux/UNIX (Amazon VPC)\", :\"SUSE Linux (Amazon VPC)\", :Windows"}

        # @return [Object, nil] (Object) The Rancher integration configuration.; Expects the following keys - access_key (String), secret_key (String), master_host (String)
        attribute :rancher

        # @return [Object, nil] (Object) The Rightscale integration configuration.; Expects the following keys - account_id (String), refresh_token (String)
        attribute :right_scale

        # @return [Object, nil] (Integer) required if on demand is not set. The percentage of Spot instances to launch (0 - 100).
        attribute :risk

        # @return [Object, nil] (Object) Roll configuration.; If you would like the group to roll after updating, please use this feature. Accepts the following keys - batch_size_percentage(Integer, Required), grace_period - (Integer, Required), health_check_type(String, Optional)
        attribute :roll_config

        # @return [Object, nil] (List of Objects) a list of hash/dictionaries of scheduled tasks to configure in the elastigroup; '[{"key":"value", "key":"value"}]'; keys allowed are - adjustment (Integer), scale_target_capacity (Integer), scale_min_capacity (Integer), scale_max_capacity (Integer), adjustment_percentage (Integer), batch_size_percentage (Integer), cron_expression (String), frequency (String), grace_period (Integer), task_type (String, required), is_enabled (Boolean)
        attribute :scheduled_tasks

        # @return [Object] (List of Strings) One or more security group IDs. ; In case of update it will override the existing Security Group with the new given array
        attribute :security_group_ids
        validates :security_group_ids, presence: true

        # @return [Object, nil] (String) The Base64-encoded shutdown script that executes prior to instance termination. Encode before setting.
        attribute :shutdown_script

        # @return [Object, nil] (List of Objects) a list of hash/dictionaries of signals to configure in the elastigroup; keys allowed are - name (String, required), timeout (Integer)
        attribute :signals

        # @return [Object, nil] (Integer) spin up time, in seconds, for the instance
        attribute :spin_up_time

        # @return [Object] (List of Strings) Spot instance type that will be provisioned.
        attribute :spot_instance_types
        validates :spot_instance_types, presence: true

        # @return [:present, :absent, nil] (String) create or delete the elastigroup
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] (List of tagKey:tagValue paris) a list of tags to configure in the elastigroup. Please specify list of keys and values (key colon value);
        attribute :tags

        # @return [Object] (Integer) The number of instances to launch
        attribute :target
        validates :target, presence: true

        # @return [Object, nil] (List of Strings) List of target group arns instances should be registered to
        attribute :target_group_arns

        # @return [:default, :dedicated, nil] (String) dedicated vs shared tenancy
        attribute :tenancy
        validates :tenancy, inclusion: {:in=>[:default, :dedicated], :message=>"%{value} needs to be :default, :dedicated"}, allow_nil: true

        # @return [Object, nil] (Boolean) terminate at the end of billing hour
        attribute :terminate_at_end_of_billing_hour

        # @return [:instance, :weight] (String) The capacity unit to launch instances by.
        attribute :unit
        validates :unit, presence: true, inclusion: {:in=>[:instance, :weight], :message=>"%{value} needs to be :instance, :weight"}

        # @return [Object, nil] (List of Objects) a list of hash/dictionaries of scaling policies to configure in the elastigroup; '[{"key":"value", "key":"value"}]'; keys allowed are - policy_name (String, required), namespace (String, required), metric_name (String, required), dimensions (List of Objects, Keys allowed are name (String, required) and value (String)), statistic (String, required) evaluation_periods (String, required), period (String, required), threshold (String, required), cooldown (String, required), unit (String, required), operator (String, required), action_type (String, required), adjustment (String), min_target_capacity (String), target (String), maximum (String), minimum (String)
        attribute :up_scaling_policies

        # @return [Object, nil] (List of Objects) a list of hash/dictionaries of scaling policies to configure in the elastigroup; '[{"key":"value", "key":"value"}]'; keys allowed are - policy_name (String, required), namespace (String, required), metric_name (String, required), dimensions ((List of Objects), Keys allowed are name (String, required) and value (String)), statistic (String, required), evaluation_periods (String, required), period (String, required), threshold (String, required), cooldown (String, required), unit (String, required), operator (String, required), action_type (String, required), adjustment (String), max_target_capacity (String), target (String), maximum (String), minimum (String)
        attribute :down_scaling_policies

        # @return [Object, nil] (List of Objects) a list of hash/dictionaries of target tracking policies to configure in the elastigroup; '[{"key":"value", "key":"value"}]'; keys allowed are - policy_name (String, required), namespace (String, required), source (String, required), metric_name (String, required), statistic (String, required), unit (String, required), cooldown (String, required), target (String, required)
        attribute :target_tracking_policies

        # @return [:id, :name, nil] (String) If your group names are not unique, you may use this feature to update or delete a specific group. Whenever this property is set, you must set a group_id in order to update or delete a group, otherwise a group will be created.
        attribute :uniqueness_by
        validates :uniqueness_by, inclusion: {:in=>[:id, :name], :message=>"%{value} needs to be :id, :name"}, allow_nil: true

        # @return [Object, nil] (String) Base64-encoded MIME user data. Encode before setting the value.
        attribute :user_data

        # @return [Object, nil] (Boolean) In case of any available Reserved Instances, Elastigroup will utilize your reservations before purchasing Spot instances.
        attribute :utilize_reserved_instances

        # @return [Object, nil] (Boolean) Whether or not the elastigroup creation / update actions should wait for the instances to spin
        attribute :wait_for_instances

        # @return [Object, nil] (Integer) How long the module should wait for instances before failing the action.; Only works if wait_for_instances is True.
        attribute :wait_timeout
      end
    end
  end
end
