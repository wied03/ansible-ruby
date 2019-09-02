# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add and remove load balancer rule members.
      class Cs_loadbalancer_rule_member < Base
        # @return [String] The name of the load balancer rule.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Public IP address from where the network traffic will be load balanced from.,Only needed to find the rule if C(name) is not unique.
        attribute :ip_address

        # @return [Array<String>, String] List of VMs to assign to or remove from the rule.
        attribute :vms
        validates :vms, presence: true, type: TypeGeneric.new(String)

        # @return [:present, :absent, nil] Should the VMs be present or absent from the rule.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Name of the project the firewall rule is related to.
        attribute :project

        # @return [Object, nil] Domain the rule is related to.
        attribute :domain

        # @return [Object, nil] Account the rule is related to.
        attribute :account

        # @return [Object, nil] Name of the zone in which the rule should be located.,If not set, default zone is used.
        attribute :zone
      end
    end
  end
end
