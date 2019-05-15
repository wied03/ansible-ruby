# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage Subnets on Cisco ACI fabrics.
      class Aci_bd_subnet < Base
        # @return [String, nil] The name of the Bridge Domain.
        attribute :bd
        validates :bd, type: String

        # @return [String, nil] The description for the Subnet.
        attribute :description
        validates :description, type: String

        # @return [Object, nil] Determines if the Subnet should be treated as a VIP; used when the BD is extended to multiple sites.,The APIC defaults to C(no) when unset during creation.
        attribute :enable_vip

        # @return [String, nil] The IPv4 or IPv6 gateway address for the Subnet.
        attribute :gateway
        validates :gateway, type: String

        # @return [Integer, nil] The subnet mask for the Subnet.,This is the number assocated with CIDR notation.,For IPv4 addresses, accepted values range between C(0) and C(32).,For IPv6 addresses, accepted Values range between C(0) and C(128).
        attribute :mask
        validates :mask, type: Integer

        # @return [Object, nil] The IPv6 Neighbor Discovery Prefix Policy to associate with the Subnet.
        attribute :nd_prefix_policy

        # @return [Object, nil] Determines if the Subnet is preferred over all available Subnets. Only one Subnet per Address Family (IPv4/IPv6). can be preferred in the Bridge Domain.,The APIC defaults to C(no) when unset during creation.
        attribute :preferred

        # @return [String, nil] The Route Profile to the associate with the Subnet.
        attribute :route_profile
        validates :route_profile, type: String

        # @return [String, nil] The L3 Out that contains the assocated Route Profile.
        attribute :route_profile_l3_out
        validates :route_profile_l3_out, type: String

        # @return [:private, :public, :shared, nil] Determines the scope of the Subnet.,The C(private) option only allows communication with hosts in the same VRF.,The C(public) option allows the Subnet to be advertised outside of the ACI Fabric, and allows communication with hosts in other VRFs.,The shared option limits communication to hosts in either the same VRF or the shared VRF.,The value is a list of options, C(private) and C(public) are mutually exclusive, but both can be used with C(shared).,The APIC defaults to C(private) when unset during creation.
        attribute :scope
        validates :scope, inclusion: {:in=>[:private, :public, :shared], :message=>"%{value} needs to be :private, :public, :shared"}, allow_nil: true

        # @return [:nd_ra, :no_gw, :querier_ip, :unspecified, nil] Determines the Subnet's Control State.,The C(querier_ip) option is used to treat the gateway_ip as an IGMP querier source IP.,The C(nd_ra) option is used to treate the gateway_ip address as a Neighbor Discovery Router Advertisement Prefix.,The C(no_gw) option is used to remove default gateway functionality from the gateway address.,The APIC defaults to C(nd_ra) when unset during creation.
        attribute :subnet_control
        validates :subnet_control, inclusion: {:in=>[:nd_ra, :no_gw, :querier_ip, :unspecified], :message=>"%{value} needs to be :nd_ra, :no_gw, :querier_ip, :unspecified"}, allow_nil: true

        # @return [String, nil] The name of the Subnet.
        attribute :subnet_name
        validates :subnet_name, type: String

        # @return [String, nil] The name of the Tenant.
        attribute :tenant
        validates :tenant, type: String

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end
