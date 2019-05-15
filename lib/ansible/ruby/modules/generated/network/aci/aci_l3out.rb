# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage Layer 3 Outside (L3Out) on Cisco ACI fabrics.
      class Aci_l3out < Base
        # @return [String] Name of an existing tenant.
        attribute :tenant
        validates :tenant, presence: true, type: String

        # @return [Object] Name of L3Out being created.
        attribute :l3out
        validates :l3out, presence: true

        # @return [String] Name of the VRF being associated with the L3Out.
        attribute :vrf
        validates :vrf, presence: true, type: String

        # @return [String] Name of the external L3 domain being associated with the L3Out.
        attribute :domain
        validates :domain, presence: true, type: String

        # @return [:AF11, :AF12, :AF13, :AF21, :AF22, :AF23, :AF31, :AF32, :AF33, :AF41, :AF42, :AF43, :CS0, :CS1, :CS2, :CS3, :CS4, :CS5, :CS6, :CS7, :EF, :VA, :unspecified, nil] The target Differentiated Service (DSCP) value.,The APIC defaults to C(unspecified) when unset during creation.
        attribute :dscp
        validates :dscp, inclusion: {:in=>[:AF11, :AF12, :AF13, :AF21, :AF22, :AF23, :AF31, :AF32, :AF33, :AF41, :AF42, :AF43, :CS0, :CS1, :CS2, :CS3, :CS4, :CS5, :CS6, :CS7, :EF, :VA, :unspecified], :message=>"%{value} needs to be :AF11, :AF12, :AF13, :AF21, :AF22, :AF23, :AF31, :AF32, :AF33, :AF41, :AF42, :AF43, :CS0, :CS1, :CS2, :CS3, :CS4, :CS5, :CS6, :CS7, :EF, :VA, :unspecified"}, allow_nil: true

        # @return [:export, :import, nil] Route Control enforcement direction. The only allowed values are export or import,export.
        attribute :route_control
        validates :route_control, inclusion: {:in=>[:export, :import], :message=>"%{value} needs to be :export, :import"}, allow_nil: true

        # @return [:static, :bgp, :ospf, :pim, nil] Routing protocol for the L3Out
        attribute :l3protocol
        validates :l3protocol, inclusion: {:in=>[:static, :bgp, :ospf, :pim], :message=>"%{value} needs to be :static, :bgp, :ospf, :pim"}, allow_nil: true

        # @return [String, nil] Description for the L3Out.
        attribute :description
        validates :description, type: String

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end
