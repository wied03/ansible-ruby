# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ec2_elb_lb < Base
        # @return [String] Create or destroy the ELB
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] The name of the ELB
        attribute :name
        validates :name, presence: true, type: String

        # @return [Array] List of ports/protocols for this ELB to listen on (see example)
        attribute :listeners
        validates :listeners, type: Array

        # @return [TrueClass] Purge existing listeners on ELB that are not found in listeners
        attribute :purge_listeners
        validates :purge_listeners, type: TrueClass

        # @return [Array] List of instance ids to attach to this ELB
        attribute :instance_ids
        validates :instance_ids, type: Array

        # @return [TrueClass] Purge existing instance ids on ELB that are not found in instance_ids
        attribute :purge_instance_ids
        validates :purge_instance_ids, type: TrueClass

        # @return [Array] List of availability zones to enable on this ELB
        attribute :zones
        validates :zones, type: Array

        # @return [TrueClass] Purge existing availability zones on ELB that are not found in zones
        attribute :purge_zones
        validates :purge_zones, type: TrueClass

        # @return [String] A list of security groups to apply to the elb
        attribute :security_group_ids
        validates :security_group_ids, type: String

        # @return [String] A list of security group names to apply to the elb
        attribute :security_group_names
        validates :security_group_names, type: String

        # @return [String] An associative array of health check configuration settings (see example)
        attribute :health_check
        validates :health_check, type: String

        # @return [String] An associative array of access logs configuration settings (see example)
        attribute :access_logs
        validates :access_logs, type: String

        # @return [String] A list of VPC subnets to use when creating ELB. Zones should be empty if using this.
        attribute :subnets
        validates :subnets, type: String

        # @return [TrueClass] Purge existing subnet on ELB that are not found in subnets
        attribute :purge_subnets
        validates :purge_subnets, type: TrueClass

        # @return [String] The scheme to use when creating the ELB. For a private VPC-visible ELB use 'internal'.
        attribute :scheme
        validates :scheme, type: String

        # @return [String] When set to "no", SSL certificates will not be validated for boto versions >= 2.6.0.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Fixnum] Wait a specified timeout allowing connections to drain before terminating an instance
        attribute :connection_draining_timeout
        validates :connection_draining_timeout, type: Fixnum

        # @return [Fixnum] ELB connections from clients and to servers are timed out after this amount of time
        attribute :idle_timeout
        validates :idle_timeout, type: Fixnum

        # @return [String] Distribute load across all configured Availability Zones
        attribute :cross_az_load_balancing
        validates :cross_az_load_balancing, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Hash] An associative array of stickness policy settings. Policy will be applied to all listeners ( see example )
        attribute :stickiness
        validates :stickiness, type: Hash

        # @return [TrueClass] When specified, Ansible will check the status of the load balancer to ensure it has been successfully removed from AWS.
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Fixnum] Used in conjunction with wait. Number of seconds to wait for the elb to be terminated. A maximum of 600 seconds (10 minutes) is allowed.
        attribute :wait_timeout
        validates :wait_timeout, type: Fixnum

        # @return [Hash] An associative array of tags. To delete all tags, supply an empty dict.
        attribute :tags
        validates :tags, type: Hash
      end
    end
  end
end