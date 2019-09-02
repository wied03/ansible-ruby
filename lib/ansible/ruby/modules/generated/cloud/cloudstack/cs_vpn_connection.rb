# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and remove VPN connections.
      class Cs_vpn_connection < Base
        # @return [String] Name of the VPC the VPN connection is related to.
        attribute :vpc
        validates :vpc, presence: true, type: String

        # @return [String] Name of the VPN customer gateway.
        attribute :vpn_customer_gateway
        validates :vpn_customer_gateway, presence: true, type: String

        # @return [Symbol, nil] State of the VPN connection.,Only considered when C(state=present).
        attribute :passive
        validates :passive, type: Symbol

        # @return [Symbol, nil] Activate the VPN gateway if not already activated on C(state=present).,Also see M(cs_vpn_gateway).
        attribute :force
        validates :force, type: Symbol

        # @return [:present, :absent, nil] State of the VPN connection.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Domain the VPN connection is related to.
        attribute :domain

        # @return [Object, nil] Account the VPN connection is related to.
        attribute :account

        # @return [Object, nil] Name of the project the VPN connection is related to.
        attribute :project

        # @return [Boolean, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
