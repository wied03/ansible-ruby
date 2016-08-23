# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vca_nat < Base
        # @return [Object] If set to true, it will delete all rules in the gateway that are not given as paramter to this module.
        attribute :purge_rules

        # @return [Object] A list of rules to be added to the gateway, Please see examples on valid entries
        attribute :nat_rules
        validates :nat_rules, presence: true
      end
    end
  end
end
