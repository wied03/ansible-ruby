# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete instance of Firewall Rule.
      class Azure_rm_sqlfirewallrule < Base
        # @return [String] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] The name of the server.
        attribute :server_name
        validates :server_name, presence: true, type: String

        # @return [String] The name of the firewall rule.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The start IP address of the firewall rule. Must be IPv4 format. Use value C(0.0.0.0) to represent all Azure-internal IP addresses.
        attribute :start_ip_address
        validates :start_ip_address, type: String

        # @return [String, nil] The end IP address of the firewall rule. Must be IPv4 format. Must be greater than or equal to startIpAddress. Use value C(0.0.0.0) to represe nt all Azure-internal IP addresses.
        attribute :end_ip_address
        validates :end_ip_address, type: String

        # @return [:absent, :present, nil] Assert the state of the SQL Database. Use 'present' to create or update an SQL Database and 'absent' to delete it.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
