# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages general policy configuration on a BIG-IP. This module is best used in conjunction with the C(bigip_policy_rule) module. This module can handle general configuration like setting the draft state of the policy, the description, and things unrelated to the policy rules themselves. It is also the first module that should be used when creating rules as the C(bigip_policy_rule) module requires a policy parameter.
      class Bigip_policy < Base
        # @return [Object, nil] The description to attach to the policy.,This parameter is only supported on versions of BIG-IP >= 12.1.0. On earlier versions it will simply be ignored.
        attribute :description

        # @return [String] The name of the policy to create.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, :draft, nil] When C(state) is C(present), ensures that the policy exists and is published. When C(state) is C(absent), ensures that the policy is removed, even if it is currently drafted.,When C(state) is C(draft), ensures that the policy exists and is drafted. When modifying rules, it is required that policies first be in a draft.,Drafting is only supported on versions of BIG-IP >= 12.1.0. On versions prior to that, specifying a C(state) of C(draft) will raise an error.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :draft], :message=>"%{value} needs to be :present, :absent, :draft"}, allow_nil: true

        # @return [:first, :all, :best, nil] Specifies the method to determine which actions get executed in the case where there are multiple rules that match. When creating new policies, the default is C(first).,This module does not allow you to specify the C(best) strategy to use. It will choose the system default (C(/Common/best-match)) for you instead.
        attribute :strategy
        validates :strategy, expression_inclusion: {:in=>[:first, :all, :best], :message=>"%{value} needs to be :first, :all, :best"}, allow_nil: true

        # @return [Array<String>, String, nil] Specifies a list of rules that you want associated with this policy. The order of this list is the order they will be evaluated by BIG-IP. If the specified rules do not exist (for example when creating a new policy) then they will be created.,The C(conditions) for a default rule are C(all).,The C(actions) for a default rule are C(ignore).,The C(bigip_policy_rule) module can be used to create and edit existing and new rules.
        attribute :rules
        validates :rules, type: TypeGeneric.new(String)

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String
      end
    end
  end
end
