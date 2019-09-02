# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages AFM security firewall policies on a BIG-IP.
      class Bigip_firewall_policy < Base
        # @return [String] The name of the policy to create.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] The description to attach to the policy.,This parameter is only supported on versions of BIG-IP >= 12.1.0. On earlier versions it will simply be ignored.
        attribute :description

        # @return [:present, :absent, nil] When C(state) is C(present), ensures that the policy exists.,When C(state) is C(absent), ensures that the policy is removed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Array<String>, String, nil] Specifies a list of rules that you want associated with this policy. The order of this list is the order they will be evaluated by BIG-IP. If the specified rules do not exist (for example when creating a new policy) then they will be created.,Rules specified here, if they do not exist, will be created with "default deny" behavior. It is expected that you follow-up this module with the actual configuration for these rules.,The C(bigip_firewall_rule) module can be used to also create, as well as edit, existing and new rules.
        attribute :rules
        validates :rules, type: TypeGeneric.new(String)

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String
      end
    end
  end
end
