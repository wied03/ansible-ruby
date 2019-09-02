# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows for creation, management, and visibility into layer 3 firewalls implemented on Meraki MX firewalls.
      class Meraki_mx_l3_firewall < Base
        # @return [:present, :query, nil] Create or modify an organization.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :query], :message=>"%{value} needs to be :present, :query"}, allow_nil: true

        # @return [String, nil] Name of organization.,If C(clone) is specified, C(org_name) is the name of the new organization.
        attribute :org_name
        validates :org_name, type: String

        # @return [Object, nil] ID of organization.
        attribute :org_id

        # @return [String, nil] Name of network which MX firewall is in.
        attribute :net_name
        validates :net_name, type: String

        # @return [Object, nil] ID of network which MX firewall is in.
        attribute :net_id

        # @return [Array<Hash>, Hash, nil] List of firewall rules.
        attribute :rules
        validates :rules, type: TypeGeneric.new(Hash)

        # @return [Symbol, nil] Whether to log hits against the default firewall rule.,Only applicable if a syslog server is specified against the network.,This is not shown in response from Meraki. Instead, refer to the C(syslog_enabled) value in the default rule.
        attribute :syslog_default_rule
        validates :syslog_default_rule, type: Symbol
      end
    end
  end
end
