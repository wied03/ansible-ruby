# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module will manage LTM policy rules on a BIG-IP.
      class Bigip_policy_rule < Base
        # @return [Object, nil] Description of the policy rule.
        attribute :description

        # @return [String, Array<Hash>, Hash, nil] The actions that you want the policy rule to perform.,The available attributes vary by the action, however, each action requires that a C(type) be specified.,These conditions can be specified in any order. Despite them being a list, the BIG-IP does not treat their order as anything special.
        attribute :actions
        validates :actions, type: TypeGeneric.new(Hash)

        # @return [String] The name of the policy that you want to associate this rule with.
        attribute :policy
        validates :policy, presence: true, type: String

        # @return [String] The name of the rule.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, Array<Hash>, Hash, nil] A list of attributes that describe the condition.,See suboptions for details on how to construct each list entry.,The ordering of this list is important, the module will ensure the order is kept when modifying the task.,The suboption options listed below are not required for all condition types, read the description for more details.,These conditions can be specified in any order. Despite them being a list, the BIG-IP does not treat their order as anything special.
        attribute :conditions
        validates :conditions, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, nil] When C(present), ensures that the key is uploaded to the device. When C(absent), ensures that the key is removed from the device. If the key is currently in use, the module will not be able to remove the key.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String
      end
    end
  end
end
