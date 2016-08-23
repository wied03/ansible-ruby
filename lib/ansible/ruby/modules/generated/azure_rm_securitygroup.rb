# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Azure_rm_securitygroup < Base
        # @return [Object] The set of default rules automatically added to a security group at creation. In general default rules will not be modified. Modify rules to shape the flow of traffic to or from a subnet or NIC. See rules below for the makeup of a rule dict.
        attribute :default_rules

        # @return [String] Valid azure location. Defaults to location of the resource group.
        attribute :location
        validates :location, type: String

        # @return [String] Name of the security group to operate on.
        attribute :name
        validates :name, type: String

        # @return [Object] Remove any existing rules not matching those defined in the default_rules parameter.
        attribute :purge_default_rules

        # @return [TrueClass] Remove any existing rules not matching those defined in the rules parameters.
        attribute :purge_rules
        validates :purge_rules, type: TrueClass

        # @return [String] Name of the resource group the security group belongs to.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [Array] Set of rules shaping traffic flow to or from a subnet or NIC. Each rule is a dictionary.
        attribute :rules
        validates :rules, type: Array

        # @return [String] Assert the state of the security group. Set to 'present' to create or update a security group. Set to 'absent' to remove a security group.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
