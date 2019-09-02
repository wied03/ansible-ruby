# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update or delete a network security group. A security group contains Access Control List (ACL) rules that allow or deny network traffic to subnets or individual network interfaces. A security group is created with a set of default security rules and an empty set of security rules. Shape traffic flow by adding rules to the empty set of security rules.
      class Azure_rm_securitygroup < Base
        # @return [Object, nil] The set of default rules automatically added to a security group at creation. In general default rules will not be modified. Modify rules to shape the flow of traffic to or from a subnet or NIC. See rules below for the makeup of a rule dict.
        attribute :default_rules

        # @return [Object, nil] Valid azure location. Defaults to location of the resource group.
        attribute :location

        # @return [String, nil] Name of the security group to operate on.
        attribute :name
        validates :name, type: String

        # @return [:yes, :no, nil] Remove any existing rules not matching those defined in the default_rules parameter.
        attribute :purge_default_rules
        validates :purge_default_rules, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Remove any existing rules not matching those defined in the rules parameters.
        attribute :purge_rules
        validates :purge_rules, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Name of the resource group the security group belongs to.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [Array<Hash>, Hash, nil] Set of rules shaping traffic flow to or from a subnet or NIC. Each rule is a dictionary.
        attribute :rules
        validates :rules, type: TypeGeneric.new(Hash)

        # @return [:absent, :present, nil] Assert the state of the security group. Set to 'present' to create or update a security group. Set to 'absent' to remove a security group.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
