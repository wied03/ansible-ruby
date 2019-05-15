# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # VPN tunnel resource.
      class Gcp_compute_vpn_tunnel < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Name of the resource. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] An optional description of this resource.
        attribute :description

        # @return [String] URL of the Target VPN gateway with which this VPN tunnel is associated.
        attribute :target_vpn_gateway
        validates :target_vpn_gateway, presence: true, type: String

        # @return [String, nil] URL of router resource to be used for dynamic routing.
        attribute :router
        validates :router, type: String

        # @return [Object] IP address of the peer VPN gateway. Only IPv4 is supported.
        attribute :peer_ip
        validates :peer_ip, presence: true

        # @return [String] Shared secret used to set the secure session between the Cloud VPN gateway and the peer VPN gateway.
        attribute :shared_secret
        validates :shared_secret, presence: true, type: String

        # @return [Integer, nil] IKE protocol version to use when establishing the VPN tunnel with peer VPN gateway.,Acceptable IKE versions are 1 or 2. Default version is 2.
        attribute :ike_version
        validates :ike_version, type: Integer

        # @return [Object, nil] Local traffic selector to use when establishing the VPN tunnel with peer VPN gateway. The value should be a CIDR formatted string, for example `192.168.0.0/16`. The ranges should be disjoint.,Only IPv4 is supported.
        attribute :local_traffic_selector

        # @return [Object, nil] Remote traffic selector to use when establishing the VPN tunnel with peer VPN gateway. The value should be a CIDR formatted string, for example `192.168.0.0/16`. The ranges should be disjoint.,Only IPv4 is supported.
        attribute :remote_traffic_selector

        # @return [Object, nil] Labels to apply to this VpnTunnel.
        attribute :labels

        # @return [String] The region where the tunnel is located.
        attribute :region
        validates :region, presence: true, type: String
      end
    end
  end
end
