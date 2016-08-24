# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ec2_metric_alarm < Base
        # @return [:present, :absent] register or deregister the alarm
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] Unique name for the alarm
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Name of the monitored metric (e.g. CPUUtilization),Metric must already exist
        attribute :metric
        validates :metric, type: String

        # @return [String, nil] Name of the appropriate namespace ('AWS/EC2', 'System/Linux', etc.), which determines the category it will appear under in cloudwatch
        attribute :namespace
        validates :namespace, type: String

        # @return [String, nil] Operation applied to the metric,Works in conjunction with period and evaluation_periods to determine the comparison value
        attribute :statistic
        validates :statistic, type: String

        # @return [String, nil] Determines how the threshold value is compared
        attribute :comparison
        validates :comparison, type: String

        # @return [Float, nil] Sets the min/max bound for triggering the alarm
        attribute :threshold
        validates :threshold, type: Float

        # @return [Integer, nil] The time (in seconds) between metric evaluations
        attribute :period
        validates :period, type: Integer

        # @return [Integer, nil] The number of times in which the metric is evaluated before final calculation
        attribute :evaluation_periods
        validates :evaluation_periods, type: Integer

        # @return [String, nil] The threshold's unit of measurement
        attribute :unit
        validates :unit, type: String

        # @return [String, nil] A longer description of the alarm
        attribute :description
        validates :description, type: String

        # @return [Hash, nil] Describes to what the alarm is applied
        attribute :dimensions
        validates :dimensions, type: Hash

        # @return [Array<String>, nil] A list of the names action(s) taken when the alarm is in the 'alarm' status
        attribute :alarm_actions
        validates :alarm_actions, type: TypeGeneric.new(String)

        # @return [Object, nil] A list of the names of action(s) to take when the alarm is in the 'insufficient_data' status
        attribute :insufficient_data_actions

        # @return [Object, nil] A list of the names of action(s) to take when the alarm is in the 'ok' status
        attribute :ok_actions
      end
    end
  end
end
