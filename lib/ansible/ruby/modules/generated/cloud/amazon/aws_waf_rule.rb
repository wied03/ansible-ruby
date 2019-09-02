# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Read the AWS documentation for WAF U(https://aws.amazon.com/documentation/waf/)
      class Aws_waf_rule < Base
        # @return [String] Name of the Web Application Firewall rule
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] A friendly name or description for the metrics for the rule,The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace.,You can't change metric_name after you create the rule,Defaults to the same as name with disallowed characters removed
        attribute :metric_name

        # @return [:present, :absent, nil] whether the rule should be present or absent
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] list of conditions used in the rule. Each condition should contain I(type): which is one of [C(byte), C(geo), C(ip), C(size), C(sql) or C(xss)] I(negated): whether the condition should be negated, and C(condition), the name of the existing condition. M(aws_waf_condition) can be used to create new conditions\r\n
        attribute :conditions
        validates :conditions, type: TypeGeneric.new(Hash)

        # @return [Object, nil] Whether or not to remove conditions that are not passed when updating `conditions`. Defaults to false.
        attribute :purge_conditions
      end
    end
  end
end
