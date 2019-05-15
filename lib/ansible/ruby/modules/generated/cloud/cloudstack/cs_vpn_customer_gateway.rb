# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and remove VPN customer gateways.
      class Cs_vpn_customer_gateway < Base
        # @return [String] Name of the gateway.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Array<String>, String, nil] List of guest CIDRs behind the gateway.,Required if C(state=present).
        attribute :cidrs
        validates :cidrs, type: TypeGeneric.new(String)

        # @return [String, nil] Public IP address of the gateway.,Required if C(state=present).
        attribute :gateway
        validates :gateway, type: String

        # @return [String, nil] ESP policy in the format e.g. C(aes256-sha1;modp1536).,Required if C(state=present).
        attribute :esp_policy
        validates :esp_policy, type: String

        # @return [String, nil] IKE policy in the format e.g. C(aes256-sha1;modp1536).,Required if C(state=present).
        attribute :ike_policy
        validates :ike_policy, type: String

        # @return [String, nil] IPsec Preshared-Key.,Cannot contain newline or double quotes.,Required if C(state=present).
        attribute :ipsec_psk
        validates :ipsec_psk, type: String

        # @return [Object, nil] Lifetime in seconds of phase 1 VPN connection.,Defaulted to 86400 by the API on creation if not set.
        attribute :ike_lifetime

        # @return [Object, nil] Lifetime in seconds of phase 2 VPN connection.,Defaulted to 3600 by the API on creation if not set.
        attribute :esp_lifetime

        # @return [Object, nil] Enable Dead Peer Detection.,Disabled per default by the API on creation if not set.
        attribute :dpd

        # @return [Object, nil] Force encapsulation for NAT traversal.,Disabled per default by the API on creation if not set.
        attribute :force_encap

        # @return [:present, :absent, nil] State of the VPN customer gateway.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Domain the VPN customer gateway is related to.
        attribute :domain

        # @return [Object, nil] Account the VPN customer gateway is related to.
        attribute :account

        # @return [Object, nil] Name of the project the VPN gateway is related to.
        attribute :project

        # @return [Boolean, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
