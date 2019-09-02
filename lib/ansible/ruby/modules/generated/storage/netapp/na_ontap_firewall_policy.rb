# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage a firewall policy for an Ontap Cluster
      class Na_ontap_firewall_policy < Base
        # @return [:present, :absent, nil] Whether to set up a fire policy or not
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Array<String>, String, nil] A list of IPs and masks to use
        attribute :allow_list
        validates :allow_list, type: TypeGeneric.new(String)

        # @return [String] A policy name for the firewall policy
        attribute :policy
        validates :policy, presence: true, type: String

        # @return [:http, :https, :ntp, :rsh, :snmp, :ssh, :telnet] The service to apply the policy to
        attribute :service
        validates :service, presence: true, expression_inclusion: {:in=>[:http, :https, :ntp, :rsh, :snmp, :ssh, :telnet], :message=>"%{value} needs to be :http, :https, :ntp, :rsh, :snmp, :ssh, :telnet"}

        # @return [String] The Vserver to apply the policy to.
        attribute :vserver
        validates :vserver, presence: true, type: String

        # @return [:enable, :disable, nil] enabled firewall
        attribute :enable
        validates :enable, expression_inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:enable, :disable, nil] enable logging
        attribute :logging
        validates :logging, expression_inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [String] The node to run the firewall configuration on
        attribute :node
        validates :node, presence: true, type: String
      end
    end
  end
end
