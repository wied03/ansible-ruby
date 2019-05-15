# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Read the AWS documentation for WAF U(https://aws.amazon.com/documentation/waf/)
      class Aws_waf_web_acl < Base
        # @return [String] Name of the Web Application Firewall ACL to manage
        attribute :name
        validates :name, presence: true, type: String

        # @return [:block, :allow, :count, nil] The action that you want AWS WAF to take when a request doesn't match the criteria specified in any of the Rule objects that are associated with the WebACL
        attribute :default_action
        validates :default_action, inclusion: {:in=>[:block, :allow, :count], :message=>"%{value} needs to be :block, :allow, :count"}, allow_nil: true

        # @return [:present, :absent, nil] whether the Web ACL should be present or absent
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] A friendly name or description for the metrics for this WebACL,The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace.,You can't change metric_name after you create the WebACL,Metric name will default to I(name) with disallowed characters stripped out
        attribute :metric_name

        # @return [Array<Hash>, Hash, nil] A list of rules that the Web ACL will enforce.,Each rule must contain I(name), I(action), I(priority) keys.,Priorities must be unique, but not necessarily consecutive. Lower numbered priorities are evalauted first.,The I(type) key can be passed as C(rate_based), it defaults to C(regular)
        attribute :rules
        validates :rules, type: TypeGeneric.new(Hash)

        # @return [Boolean, nil] Whether to remove rules that aren't passed with C(rules). Defaults to false
        attribute :purge_rules
        validates :purge_rules, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
