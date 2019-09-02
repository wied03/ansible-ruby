# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Can create or delete AWS metric alarms.
      # Metrics you wish to alarm on must already exist.
      class Ec2_metric_alarm < Base
        # @return [:present, :absent] register or deregister the alarm
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] Unique name for the alarm
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Name of the monitored metric (e.g. CPUUtilization),Metric must already exist
        attribute :metric
        validates :metric, type: String

        # @return [String, nil] Name of the appropriate namespace ('AWS/EC2', 'System/Linux', etc.), which determines the category it will appear under in cloudwatch
        attribute :namespace
        validates :namespace, type: String

        # @return [:SampleCount, :Average, :Sum, :Minimum, :Maximum, nil] Operation applied to the metric,Works in conjunction with period and evaluation_periods to determine the comparison value
        attribute :statistic
        validates :statistic, expression_inclusion: {:in=>[:SampleCount, :Average, :Sum, :Minimum, :Maximum], :message=>"%{value} needs to be :SampleCount, :Average, :Sum, :Minimum, :Maximum"}, allow_nil: true

        # @return [:<=, :<, :>, :>=, nil] Determines how the threshold value is compared
        attribute :comparison
        validates :comparison, expression_inclusion: {:in=>[:<=, :<, :>, :>=], :message=>"%{value} needs to be :<=, :<, :>, :>="}, allow_nil: true

        # @return [Float, nil] Sets the min/max bound for triggering the alarm
        attribute :threshold
        validates :threshold, type: Float

        # @return [Integer, nil] The time (in seconds) between metric evaluations
        attribute :period
        validates :period, type: Integer

        # @return [Integer, nil] The number of times in which the metric is evaluated before final calculation
        attribute :evaluation_periods
        validates :evaluation_periods, type: Integer

        # @return [:Seconds, :Microseconds, :Milliseconds, :Bytes, :Kilobytes, :Megabytes, :Gigabytes, :Terabytes, :Bits, :Kilobits, :Megabits, :Gigabits, :Terabits, :Percent, :Count, :"Bytes/Second", :"Kilobytes/Second", :"Megabytes/Second", :"Gigabytes/Second", :"Terabytes/Second", :"Bits/Second", :"Kilobits/Second", :"Megabits/Second", :"Gigabits/Second", :"Terabits/Second", :"Count/Second", :None, nil] The threshold's unit of measurement
        attribute :unit
        validates :unit, expression_inclusion: {:in=>[:Seconds, :Microseconds, :Milliseconds, :Bytes, :Kilobytes, :Megabytes, :Gigabytes, :Terabytes, :Bits, :Kilobits, :Megabits, :Gigabits, :Terabits, :Percent, :Count, :"Bytes/Second", :"Kilobytes/Second", :"Megabytes/Second", :"Gigabytes/Second", :"Terabytes/Second", :"Bits/Second", :"Kilobits/Second", :"Megabits/Second", :"Gigabits/Second", :"Terabits/Second", :"Count/Second", :None], :message=>"%{value} needs to be :Seconds, :Microseconds, :Milliseconds, :Bytes, :Kilobytes, :Megabytes, :Gigabytes, :Terabytes, :Bits, :Kilobits, :Megabits, :Gigabits, :Terabits, :Percent, :Count, :\"Bytes/Second\", :\"Kilobytes/Second\", :\"Megabytes/Second\", :\"Gigabytes/Second\", :\"Terabytes/Second\", :\"Bits/Second\", :\"Kilobits/Second\", :\"Megabits/Second\", :\"Gigabits/Second\", :\"Terabits/Second\", :\"Count/Second\", :None"}, allow_nil: true

        # @return [String, nil] A longer description of the alarm
        attribute :description
        validates :description, type: String

        # @return [Hash, nil] Describes to what the alarm is applied
        attribute :dimensions
        validates :dimensions, type: Hash

        # @return [Array<String>, String, nil] A list of the names action(s) taken when the alarm is in the 'alarm' status
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
