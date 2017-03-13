# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Adds or removes nat rules from a gateway in a vca environment
      class Vca_nat < Base
        # @return [Boolean, nil] If set to true, it will delete all rules in the gateway that are not given as paramter to this module.
        attribute :purge_rules
        validates :purge_rules, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean] A list of rules to be added to the gateway, Please see examples on valid entries
        attribute :nat_rules
        validates :nat_rules, presence: true, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}
      end
    end
  end
end
