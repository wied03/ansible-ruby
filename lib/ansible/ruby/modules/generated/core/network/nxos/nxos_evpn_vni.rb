# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages Cisco Ethernet Virtual Private Network (EVPN) VXLAN Network Identifier (VNI) configurations of a Nexus device.
      class Nxos_evpn_vni < Base
        # @return [Integer] The EVPN VXLAN Network Identifier.
        attribute :vni
        validates :vni, presence: true, type: Integer

        # @return [String] The VPN Route Distinguisher (RD). The RD is combined with the IPv4 or IPv6 prefix learned by the PE router to create a globally unique address.
        attribute :route_distinguisher
        validates :route_distinguisher, presence: true, type: String

        # @return [String, nil] Enables/Disables route-target settings for both import and export target communities using a single property.
        attribute :route_target_both
        validates :route_target_both, type: String

        # @return [Array<String>, String, nil] Sets the route-target 'import' extended communities.
        attribute :route_target_import
        validates :route_target_import, type: TypeGeneric.new(String)

        # @return [String, nil] Sets the route-target 'import' extended communities.
        attribute :route_target_export
        validates :route_target_export, type: String

        # @return [:present, :absent, nil] Determines whether the config should be present or not on the device.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
