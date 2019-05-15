# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and manage AWS EC2 instance
      class Ec2_instance < Base
        # @return [Array<String>, String, nil] If you specify one or more instance IDs, only instances that have the specified IDs are returned.
        attribute :instance_ids
        validates :instance_ids, type: TypeGeneric.new(String)

        # @return [:present, :terminated, :running, :started, :stopped, :restarted, :rebooted, :absent, nil] Goal state for the instances
        attribute :state
        validates :state, inclusion: {:in=>[:present, :terminated, :running, :started, :stopped, :restarted, :rebooted, :absent], :message=>"%{value} needs to be :present, :terminated, :running, :started, :stopped, :restarted, :rebooted, :absent"}, allow_nil: true

        # @return [Boolean, nil] Whether or not to wait for the desired state (use wait_timeout to customize this)
        attribute :wait
        validates :wait, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] How long to wait (in seconds) for the instance to finish booting/terminating
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [String, nil] Instance type to use for the instance, see U(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) Only required when instance is not already present
        attribute :instance_type
        validates :instance_type, type: String

        # @return [Object, nil] Opaque blob of data which is made available to the ec2 instance
        attribute :user_data

        # @return [Hash, nil] Preconfigured user-data to enable an instance to perform a Tower callback (Linux only).,Mutually exclusive with I(user_data).,For Windows instances, to enable remote access via Ansible set I(tower_callback.windows) to true, and optionally set an admin password.,If using 'windows' and 'set_password', callback to Tower will not be performed but the instance will be ready to receive winrm connections from Ansible.
        attribute :tower_callback
        validates :tower_callback, type: Hash

        # @return [Hash, nil] A hash/dictionary of tags to add to the new instance or to add/remove from an existing one.
        attribute :tags
        validates :tags, type: Hash

        # @return [Boolean, nil] Delete any tags not specified in the task that are on the instance. This means you have to specify all the desired tags on each task affecting an instance.
        attribute :purge_tags
        validates :purge_tags, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] An image to use for the instance. The ec2_ami_facts module may be used to retrieve images. One of I(image) or I(image_id) are required when instance is not already present.,Complex object containing I(image.id), I(image.ramdisk), and I(image.kernel).,I(image.id) is the AMI ID.,I(image.ramdisk) overrides the AMI's default ramdisk ID.,I(image.kernel) is a string AKI to override the AMI kernel.
        attribute :image

        # @return [String, nil] I(ami) ID to use for the instance. One of I(image) or I(image_id) are required when instance is not already present.,This is an alias for I(image.id).
        attribute :image_id
        validates :image_id, type: String

        # @return [Object, nil] A list of security group IDs or names (strings). Mutually exclusive with I(security_group).
        attribute :security_groups

        # @return [String, nil] A security group ID or name. Mutually exclusive with I(security_groups).
        attribute :security_group
        validates :security_group, type: String

        # @return [String, nil] The Name tag for the instance.
        attribute :name
        validates :name, type: String

        # @return [String, nil] The subnet ID in which to launch the instance (VPC) If none is provided, ec2_instance will chose the default zone of the default VPC
        attribute :vpc_subnet_id
        validates :vpc_subnet_id, type: String

        # @return [Hash, nil] Either a dictionary containing the key 'interfaces' corresponding to a list of network interface IDs or containing specifications for a single network interface.,If specifications for a single network are given, accepted keys are assign_public_ip (bool), private_ip_address (str), ipv6_addresses (list), source_dest_check (bool), description (str), delete_on_termination (bool), device_index (int), groups (list of security group IDs), private_ip_addresses (list), subnet_id (str).,I(network.interfaces) should be a list of ENI IDs (strings) or a list of objects containing the key I(id).,Use the ec2_eni to create ENIs with special settings.
        attribute :network
        validates :network, type: Hash

        # @return [Object, nil] A list of block device mappings, by default this will always use the AMI root device so the volumes option is primarily for adding more storage.,A mapping contains the (optional) keys device_name, virtual_name, ebs.volume_type, ebs.volume_size, ebs.kms_key_id, ebs.iops, and ebs.delete_on_termination.,For more information about each parameter, see U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html)
        attribute :volumes

        # @return [Object, nil] The EC2 launch template to base instance configuration on.,I(launch_template.id) the ID or the launch template (optional if name is specified),I(launch_template.name) the pretty name of the launch template (optional if id is specified),I(launch_template.version) the specific version of the launch template to use. If unspecified, the template default is chosen.
        attribute :launch_template

        # @return [String, nil] Name of the SSH access key to assign to the instance - must exist in the region the instance is created.
        attribute :key_name
        validates :key_name, type: String

        # @return [Object, nil] Specify an availability zone to use the default subnet it. Useful if not specifying the I(vpc_subnet_id) parameter.,If no subnet, ENI, or availability zone is provided, the default subnet in the default VPC will be used in the first AZ (alphabetically sorted).
        attribute :availability_zone

        # @return [:stop, :terminate, nil] Whether to stop or terminate an instance upon shutdown.
        attribute :instance_initiated_shutdown_behavior
        validates :instance_initiated_shutdown_behavior, inclusion: {:in=>[:stop, :terminate], :message=>"%{value} needs to be :stop, :terminate"}, allow_nil: true

        # @return [:dedicated, :default, nil] What type of tenancy to allow an instance to use. Default is shared tenancy. Dedicated tenancy will incur additional charges.
        attribute :tenancy
        validates :tenancy, inclusion: {:in=>[:dedicated, :default], :message=>"%{value} needs to be :dedicated, :default"}, allow_nil: true

        # @return [Object, nil] Whether to enable termination protection. This module will not terminate an instance with termination protection active, it must be turned off first.
        attribute :termination_protection

        # @return [:unlimited, :standard, nil] For T2 series instances, choose whether to allow increased charges to buy CPU credits if the default pool is depleted.,Choose I(unlimited) to enable buying additional CPU credits.
        attribute :cpu_credit_specification
        validates :cpu_credit_specification, inclusion: {:in=>[:unlimited, :standard], :message=>"%{value} needs to be :unlimited, :standard"}, allow_nil: true

        # @return [Object, nil] Reduce the number of vCPU exposed to the instance.,Those parameters can only be set at instance launch. The two suboptions threads_per_core and core_count are mandatory.,See U(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html) for combinations available.,Requires botocore >= 1.10.16
        attribute :cpu_options

        # @return [Object, nil] Whether to allow detailed cloudwatch metrics to be collected, enabling more detailed alerting.
        attribute :detailed_monitoring

        # @return [Object, nil] Whether instance is should use optimized EBS volumes, see U(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html)
        attribute :ebs_optimized

        # @return [Array<String>, String, nil] A dict of filters to apply when deciding whether existing instances match and should be altered. Each dict item consists of a filter key and a filter value. See U(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html) for possible filters. Filter names and values are case sensitive. By default, instances are filtered for counting by their "Name" tag, base AMI, state (running, by default), and subnet ID. Any queryable filter can be used. Good candidates are specific tags, SSH keys, or security groups.
        attribute :filters
        validates :filters, type: TypeGeneric.new(String)

        # @return [Object, nil] The ARN or name of an EC2-enabled instance role to be used. If a name is not provided in arn format then the ListInstanceProfiles permission must also be granted. U(https://docs.aws.amazon.com/IAM/latest/APIReference/API_ListInstanceProfiles.html) If no full ARN is provided, the role with a matching name will be used from the active AWS account.
        attribute :instance_role
      end
    end
  end
end
