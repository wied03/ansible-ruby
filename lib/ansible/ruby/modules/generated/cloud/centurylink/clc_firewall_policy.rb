# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or delete or update firewall polices on Centurylink Cloud
      class Clc_firewall_policy < Base
        # @return [Object] Target datacenter for the firewall policy
        attribute :location
        validates :location, presence: true

        # @return [:present, :absent, nil] Whether to create or delete the firewall policy
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] The list  of source addresses for traffic on the originating firewall. This is required when state is 'present'
        attribute :source

        # @return [Object, nil] The list of destination addresses for traffic on the terminating firewall. This is required when state is 'present'
        attribute :destination

        # @return [:any, :icmp, :"TCP/123", :"UDP/123", :"TCP/123-456", :"UDP/123-456", nil] The list of ports associated with the policy. TCP and UDP can take in single ports or port ranges.
        attribute :ports
        validates :ports, expression_inclusion: {:in=>[:any, :icmp, :"TCP/123", :"UDP/123", :"TCP/123-456", :"UDP/123-456"], :message=>"%{value} needs to be :any, :icmp, :\"TCP/123\", :\"UDP/123\", :\"TCP/123-456\", :\"UDP/123-456\""}, allow_nil: true

        # @return [Object, nil] Id of the firewall policy. This is required to update or delete an existing firewall policy
        attribute :firewall_policy_id

        # @return [Object] CLC alias for the source account
        attribute :source_account_alias
        validates :source_account_alias, presence: true

        # @return [Object, nil] CLC alias for the destination account
        attribute :destination_account_alias

        # @return [:yes, :no, nil] Whether to wait for the provisioning tasks to finish before returning.
        attribute :wait
        validates :wait, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Boolean, nil] Whether the firewall policy is enabled or disabled
        attribute :enabled
        validates :enabled, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
