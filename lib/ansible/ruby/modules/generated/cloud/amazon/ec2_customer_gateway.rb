# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage an AWS customer gateway
      class Ec2_customer_gateway < Base
        # @return [Integer, nil] Border Gateway Protocol (BGP) Autonomous System Number (ASN), required when state=present.
        attribute :bgp_asn
        validates :bgp_asn, type: Integer

        # @return [String] Internet-routable IP address for customers gateway, must be a static address.
        attribute :ip_address
        validates :ip_address, presence: true, type: String

        # @return [String] Name of the customer gateway.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:static, :dynamic, nil] The type of routing.
        attribute :routing
        validates :routing, inclusion: {:in=>[:static, :dynamic], :message=>"%{value} needs to be :static, :dynamic"}, allow_nil: true

        # @return [:present, :absent, nil] Create or terminate the Customer Gateway.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
