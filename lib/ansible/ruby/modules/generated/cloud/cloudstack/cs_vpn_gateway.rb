# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates and removes VPN site-to-site gateways.
      class Cs_vpn_gateway < Base
        # @return [String] Name of the VPC.
        attribute :vpc
        validates :vpc, presence: true, type: String

        # @return [:present, :absent, nil] State of the VPN gateway.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Domain the VPN gateway is related to.
        attribute :domain

        # @return [Object, nil] Account the VPN gateway is related to.
        attribute :account

        # @return [Object, nil] Name of the project the VPN gateway is related to.
        attribute :project

        # @return [Object, nil] Name of the zone the VPC is related to.,If not set, default zone is used.
        attribute :zone

        # @return [:yes, :no, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
