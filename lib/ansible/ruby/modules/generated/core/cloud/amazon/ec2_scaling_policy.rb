# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ec2_scaling_policy < Base
        # @return [:present, :absent] register or deregister the policy
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] Unique name for the scaling policy
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Name of the associated autoscaling group
        attribute :asg_name
        validates :asg_name, presence: true, type: String

        # @return [:ChangeInCapacity, :ExactCapacity, :PercentChangeInCapacity, nil] The type of change in capacity of the autoscaling group
        attribute :adjustment_type
        validates :adjustment_type, inclusion: {:in=>[:ChangeInCapacity, :ExactCapacity, :PercentChangeInCapacity], :message=>"%{value} needs to be :ChangeInCapacity, :ExactCapacity, :PercentChangeInCapacity"}, allow_nil: true

        # @return [Integer, nil] The amount by which the autoscaling group is adjusted by the policy
        attribute :scaling_adjustment
        validates :scaling_adjustment, type: Integer

        # @return [Integer, nil] Minimum amount of adjustment when policy is triggered
        attribute :min_adjustment_step
        validates :min_adjustment_step, type: Integer

        # @return [Integer, nil] The minimum period of time between which autoscaling actions can take place
        attribute :cooldown
        validates :cooldown, type: Integer
      end
    end
  end
end
