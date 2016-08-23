# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Clc_firewall_policy < Base
        # @return [Object] Target datacenter for the firewall policy
        attribute :location
        validates :location, presence: true

        # @return [:present, :absent, nil] Whether to create or delete the firewall policy
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The list  of source addresses for traffic on the originating firewall. This is required when state is 'present"
        attribute :source
        validates :source, type: String

        # @return [String] The list of destination addresses for traffic on the terminating firewall. This is required when state is 'present'
        attribute :destination
        validates :destination, type: String

        # @return [:any, :icmp, :"TCP/123", :"UDP/123", :"TCP/123-456", :"UDP/123-456", nil] The list of ports associated with the policy. TCP and UDP can take in single ports or port ranges.
        attribute :ports
        validates :ports, inclusion: {:in=>[:any, :icmp, :"TCP/123", :"UDP/123", :"TCP/123-456", :"UDP/123-456"], :message=>"%{value} needs to be :any, :icmp, :\"TCP/123\", :\"UDP/123\", :\"TCP/123-456\", :\"UDP/123-456\""}, allow_nil: true

        # @return [String] Id of the firewall policy. This is required to update or delete an existing firewall policy
        attribute :firewall_policy_id
        validates :firewall_policy_id, type: String

        # @return [Object] CLC alias for the source account
        attribute :source_account_alias
        validates :source_account_alias, presence: true

        # @return [String] CLC alias for the destination account
        attribute :destination_account_alias
        validates :destination_account_alias, type: String

        # @return [Boolean, nil] Whether to wait for the provisioning tasks to finish before returning.
        attribute :wait
        validates :wait, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Whether the firewall policy is enabled or disabled
        attribute :enabled
        validates :enabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
