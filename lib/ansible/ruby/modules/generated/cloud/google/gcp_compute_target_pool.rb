# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Represents a TargetPool resource, used for Load Balancing.
      class Gcp_compute_target_pool < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] This field is applicable only when the containing target pool is serving a forwarding rule as the primary pool, and its failoverRatio field is properly set to a value between [0, 1].,backupPool and failoverRatio together define the fallback behavior of the primary target pool: if the ratio of the healthy instances in the primary pool is at or below failoverRatio, traffic arriving at the load-balanced IP will be directed to the backup pool.,In case where failoverRatio and backupPool are not set, or all the instances in the backup pool are unhealthy, the traffic will be directed back to the primary pool in the "force" mode, where traffic will be spread to the healthy instances with the best effort, or to all instances when no instance is healthy.
        attribute :backup_pool

        # @return [Object, nil] An optional description of this resource.
        attribute :description

        # @return [Object, nil] This field is applicable only when the containing target pool is serving a forwarding rule as the primary pool (i.e., not as a backup pool to some other target pool). The value of the field must be in [0, 1].,If set, backupPool must also be set. They together define the fallback behavior of the primary target pool: if the ratio of the healthy instances in the primary pool is at or below this number, traffic arriving at the load-balanced IP will be directed to the backup pool.,In case where failoverRatio is not set or all the instances in the backup pool are unhealthy, the traffic will be directed back to the primary pool in the "force" mode, where traffic will be spread to the healthy instances with the best effort, or to all instances when no instance is healthy.
        attribute :failover_ratio

        # @return [Object, nil] A reference to a HttpHealthCheck resource.,A member instance in this pool is considered healthy if and only if the health checks pass. If not specified it means all member instances will be considered healthy at all times.
        attribute :health_check

        # @return [Object, nil] A list of virtual machine instances serving this pool.,They must live in zones contained in the same region as this pool.
        attribute :instances

        # @return [String] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:NONE, :CLIENT_IP, :CLIENT_IP_PROTO, nil] Session affinity option. Must be one of these values:  - NONE: Connections from the same client IP may go to any instance in   the pool.,- CLIENT_IP: Connections from the same client IP will go to the same   instance in the pool while that instance remains healthy.,- CLIENT_IP_PROTO: Connections from the same client IP with the same   IP protocol will go to the same instance in the pool while that   instance remains healthy.
        attribute :session_affinity
        validates :session_affinity, expression_inclusion: {:in=>[:NONE, :CLIENT_IP, :CLIENT_IP_PROTO], :message=>"%{value} needs to be :NONE, :CLIENT_IP, :CLIENT_IP_PROTO"}, allow_nil: true

        # @return [String] The region where the target pool resides.
        attribute :region
        validates :region, presence: true, type: String
      end
    end
  end
end
