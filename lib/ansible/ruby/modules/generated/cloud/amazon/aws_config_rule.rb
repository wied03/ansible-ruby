# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module manages AWS Config rules
      class Aws_config_rule < Base
        # @return [String] The name of the AWS Config resource.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Whether the Config rule should be present or absent.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The description that you provide for the AWS Config rule.
        attribute :description
        validates :description, type: String

        # @return [Hash, nil] Defines which resources can trigger an evaluation for the rule.
        attribute :scope
        validates :scope, type: Hash

        # @return [Hash, nil] Provides the rule owner (AWS or customer), the rule identifier, and the notifications that cause the function to evaluate your AWS resources.
        attribute :source
        validates :source, type: Hash

        # @return [Object, nil] A string, in JSON format, that is passed to the AWS Config rule Lambda function.
        attribute :input_parameters

        # @return [:One_Hour, :Three_Hours, :Six_Hours, :Twelve_Hours, :TwentyFour_Hours, nil] The maximum frequency with which AWS Config runs evaluations for a rule.
        attribute :execution_frequency
        validates :execution_frequency, expression_inclusion: {:in=>[:One_Hour, :Three_Hours, :Six_Hours, :Twelve_Hours, :TwentyFour_Hours], :message=>"%{value} needs to be :One_Hour, :Three_Hours, :Six_Hours, :Twelve_Hours, :TwentyFour_Hours"}, allow_nil: true
      end
    end
  end
end
