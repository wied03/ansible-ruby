# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Returns information about the load balancer.
      # Will be marked changed when called only if state is changed.
      class Ec2_elb_lb < Base
        # @return [:present, :absent] Create or destroy the ELB
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] The name of the ELB
        attribute :name
        validates :name, presence: true, type: String

        # @return [Array<Hash>, Hash, nil] List of ports/protocols for this ELB to listen on (see example)
        attribute :listeners
        validates :listeners, type: TypeGeneric.new(Hash)

        # @return [String, nil] Purge existing listeners on ELB that are not found in listeners
        attribute :purge_listeners
        validates :purge_listeners, type: String

        # @return [String, nil] List of instance ids to attach to this ELB
        attribute :instance_ids
        validates :instance_ids, type: String

        # @return [String, nil] Purge existing instance ids on ELB that are not found in instance_ids
        attribute :purge_instance_ids
        validates :purge_instance_ids, type: String

        # @return [Array<String>, String, nil] List of availability zones to enable on this ELB
        attribute :zones
        validates :zones, type: TypeGeneric.new(String)

        # @return [String, nil] Purge existing availability zones on ELB that are not found in zones
        attribute :purge_zones
        validates :purge_zones, type: String

        # @return [Array<String>, String, nil] A list of security groups to apply to the elb
        attribute :security_group_ids
        validates :security_group_ids, type: TypeGeneric.new(String)

        # @return [Object, nil] A list of security group names to apply to the elb
        attribute :security_group_names

        # @return [Hash, nil] An associative array of health check configuration settings (see example)
        attribute :health_check
        validates :health_check, type: Hash

        # @return [Hash, nil] An associative array of access logs configuration settings (see example)
        attribute :access_logs
        validates :access_logs, type: Hash

        # @return [Array<String>, String, nil] A list of VPC subnets to use when creating ELB. Zones should be empty if using this.
        attribute :subnets
        validates :subnets, type: TypeGeneric.new(String)

        # @return [String, nil] Purge existing subnet on ELB that are not found in subnets
        attribute :purge_subnets
        validates :purge_subnets, type: String

        # @return [:internal, :"internet-facing", nil] The scheme to use when creating the ELB. For a private VPC-visible ELB use 'internal'. If you choose to update your scheme with a different value the ELB will be destroyed and recreated. To update scheme you must use the option wait.
        attribute :scheme
        validates :scheme, inclusion: {:in=>[:internal, :"internet-facing"], :message=>"%{value} needs to be :internal, :\"internet-facing\""}, allow_nil: true

        # @return [String, nil] When set to "no", SSL certificates will not be validated for boto versions >= 2.6.0.
        attribute :validate_certs
        validates :validate_certs, type: String

        # @return [Integer, nil] Wait a specified timeout allowing connections to drain before terminating an instance
        attribute :connection_draining_timeout
        validates :connection_draining_timeout, type: Integer

        # @return [Integer, nil] ELB connections from clients and to servers are timed out after this amount of time
        attribute :idle_timeout
        validates :idle_timeout, type: Integer

        # @return [String, nil] Distribute load across all configured Availability Zones
        attribute :cross_az_load_balancing
        validates :cross_az_load_balancing, type: String

        # @return [Hash, nil] An associative array of stickiness policy settings. Policy will be applied to all listeners ( see example )
        attribute :stickiness
        validates :stickiness, type: Hash

        # @return [String, nil] When specified, Ansible will check the status of the load balancer to ensure it has been successfully removed from AWS.
        attribute :wait
        validates :wait, type: String

        # @return [Integer, nil] Used in conjunction with wait. Number of seconds to wait for the elb to be terminated. A maximum of 600 seconds (10 minutes) is allowed.
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [Hash, nil] An associative array of tags. To delete all tags, supply an empty dict.
        attribute :tags
        validates :tags, type: Hash
      end
    end
  end
end
