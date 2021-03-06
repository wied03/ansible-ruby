# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Adds or removes firewall rules from a gateway in a vca environment
      class Vca_fw < Base
        # @return [Boolean] A list of firewall rules to be added to the gateway, Please see examples on valid entries
        attribute :fw_rules
        validates :fw_rules, presence: true, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}
      end
    end
  end
end
