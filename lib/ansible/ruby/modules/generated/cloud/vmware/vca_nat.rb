# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Adds or removes nat rules from a gateway in a vca environment
      class Vca_nat < Base
        # @return [Symbol, nil] If set to true, it will delete all rules in the gateway that are not given as parameter to this module.
        attribute :purge_rules
        validates :purge_rules, type: Symbol

        # @return [Boolean] A list of rules to be added to the gateway, Please see examples on valid entries
        attribute :nat_rules
        validates :nat_rules, presence: true, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}
      end
    end
  end
end
