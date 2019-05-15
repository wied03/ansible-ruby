# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage an AWS Elastic Load Balancer target group. See U(http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html) or U(http://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html) for details.
      class Elb_target_group < Base
        # @return [Object, nil] The amount time for Elastic Load Balancing to wait before changing the state of a deregistering target from draining to unused. The range is 0-3600 seconds.
        attribute :deregistration_delay_timeout

        # @return [:http, :https, :tcp, nil] The protocol the load balancer uses when performing health checks on targets.
        attribute :health_check_protocol
        validates :health_check_protocol, inclusion: {:in=>[:http, :https, :tcp], :message=>"%{value} needs to be :http, :https, :tcp"}, allow_nil: true

        # @return [String, nil] The port the load balancer uses when performing health checks on targets. Can be set to 'traffic-port' to match target port.
        attribute :health_check_port
        validates :health_check_port, type: String

        # @return [String, nil] The ping path that is the destination on the targets for health checks. The path must be defined in order to set a health check.
        attribute :health_check_path
        validates :health_check_path, type: String

        # @return [Object, nil] The approximate amount of time, in seconds, between health checks of an individual target.
        attribute :health_check_interval

        # @return [Object, nil] The amount of time, in seconds, during which no response from a target means a failed health check.
        attribute :health_check_timeout

        # @return [Object, nil] The number of consecutive health checks successes required before considering an unhealthy target healthy.
        attribute :healthy_threshold_count

        # @return [Boolean, nil] Whether or not to alter existing targets in the group to match what is passed with the module
        attribute :modify_targets
        validates :modify_targets, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] The name of the target group.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer, nil] The port on which the targets receive traffic. This port is used unless you specify a port override when registering the target. Required if I(state) is C(present).
        attribute :port
        validates :port, type: Integer

        # @return [:http, :https, :tcp, nil] The protocol to use for routing traffic to the targets. Required when I(state) is C(present).
        attribute :protocol
        validates :protocol, inclusion: {:in=>[:http, :https, :tcp], :message=>"%{value} needs to be :http, :https, :tcp"}, allow_nil: true

        # @return [Boolean, nil] If yes, existing tags will be purged from the resource to match exactly what is defined by I(tags) parameter. If the tag parameter is not set then tags will not be modified.
        attribute :purge_tags
        validates :purge_tags, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent] Create or destroy the target group.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Object, nil] Indicates whether sticky sessions are enabled.
        attribute :stickiness_enabled

        # @return [Object, nil] The time period, in seconds, during which requests from a client should be routed to the same target. After this time period expires, the load balancer-generated cookie is considered stale. The range is 1 second to 1 week (604800 seconds).
        attribute :stickiness_lb_cookie_duration

        # @return [String, nil] The type of sticky sessions. The possible value is lb_cookie.
        attribute :stickiness_type
        validates :stickiness_type, type: String

        # @return [Array<Integer>, Integer, nil] The HTTP codes to use when checking for a successful response from a target. You can specify multiple values (for example, "200,202") or a range of values (for example, "200-299").
        attribute :successful_response_codes
        validates :successful_response_codes, type: TypeGeneric.new(Integer)

        # @return [Object, nil] A dictionary of one or more tags to assign to the target group.
        attribute :tags

        # @return [:instance, :ip, nil] The type of target that you must specify when registering targets with this target group. The possible values are C(instance) (targets are specified by instance ID) or C(ip) (targets are specified by IP address). Note that you can't specify targets for a target group using both instance IDs and IP addresses. If the target type is ip, specify IP addresses from the subnets of the virtual private cloud (VPC) for the target group, the RFC 1918 range (10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16), and the RFC 6598 range (100.64.0.0/10). You can't specify publicly routable IP addresses.
        attribute :target_type
        validates :target_type, inclusion: {:in=>[:instance, :ip], :message=>"%{value} needs to be :instance, :ip"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] A list of targets to assign to the target group. This parameter defaults to an empty list. Unless you set the 'modify_targets' parameter then all existing targets will be removed from the group. The list should be an Id and a Port parameter. See the Examples for detail.
        attribute :targets
        validates :targets, type: TypeGeneric.new(Hash)

        # @return [Object, nil] The number of consecutive health check failures required before considering a target unhealthy.
        attribute :unhealthy_threshold_count

        # @return [String, nil] The identifier of the virtual private cloud (VPC). Required when I(state) is C(present).
        attribute :vpc_id
        validates :vpc_id, type: String

        # @return [Boolean, nil] Whether or not to wait for the target group.
        attribute :wait
        validates :wait, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] The time to wait for the target group.
        attribute :wait_timeout
        validates :wait_timeout, type: Integer
      end
    end
  end
end
