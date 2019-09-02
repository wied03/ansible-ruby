# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Used to register or deregister a target in a target group
      class Elb_target < Base
        # @return [Symbol, nil] The default behaviour for targets that are unused is to leave them registered. If instead you would like to remove them set I(deregister_unused) to yes.
        attribute :deregister_unused
        validates :deregister_unused, type: Symbol

        # @return [Object, nil] An Availability Zone or all. This determines whether the target receives traffic from the load balancer nodes in the specified Availability Zone or from all enabled Availability Zones for the load balancer. This parameter is not supported if the target type of the target group is instance.
        attribute :target_az

        # @return [Object, nil] The Amazon Resource Name (ARN) of the target group. Mutually exclusive of I(target_group_name).
        attribute :target_group_arn

        # @return [String, nil] The name of the target group. Mutually exclusive of I(target_group_arn).
        attribute :target_group_name
        validates :target_group_name, type: String

        # @return [String] The ID of the target.
        attribute :target_id
        validates :target_id, presence: true, type: String

        # @return [String, nil] The port on which the target is listening. You can specify a port override. If a target is already registered, you can register it again using a different port.
        attribute :target_port
        validates :target_port, type: String

        # @return [:initial, :healthy, :unhealthy, :unused, :draining, :unavailable, nil] Blocks and waits for the target status to equal given value. For more detail on target status see U(http://docs.aws.amazon.com/elasticloadbalancing/latest/application/target-group-health-checks.html#target-health-states)
        attribute :target_status
        validates :target_status, expression_inclusion: {:in=>[:initial, :healthy, :unhealthy, :unused, :draining, :unavailable], :message=>"%{value} needs to be :initial, :healthy, :unhealthy, :unused, :draining, :unavailable"}, allow_nil: true

        # @return [Integer, nil] Maximum time in seconds to wait for target_status change
        attribute :target_status_timeout
        validates :target_status_timeout, type: Integer

        # @return [:present, :absent] Register or deregister the target.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}
      end
    end
  end
end
