# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage route domains on a BIG-IP
      class Bigip_routedomain < Base
        # @return [Object, nil] The bandwidth controller for the route domain.
        attribute :bwc_policy

        # @return [Object, nil] The maximum number of concurrent connections allowed for the route domain. Setting this to C(0) turns off connection limits.
        attribute :connection_limit

        # @return [Object, nil] Specifies descriptive text that identifies the route domain.
        attribute :description

        # @return [Object, nil] The eviction policy to use with this route domain. Apply an eviction policy to provide customized responses to flow overflows and slow flows on the route domain.
        attribute :flow_eviction_policy

        # @return [String] The unique identifying integer representing the route domain.
        attribute :id
        validates :id, presence: true, type: String

        # @return [Object, nil] Specifies the route domain the system searches when it cannot\r\nfind a route in the configured domain.\r\n
        attribute :parent

        # @return [:BFD, :BGP, :"IS-IS", :OSPFv2, :OSPFv3, :PIM, :RIP, :RIPng, nil] Dynamic routing protocols for the system to use in the route domain.
        attribute :routing_protocol
        validates :routing_protocol, inclusion: {:in=>[:BFD, :BGP, :"IS-IS", :OSPFv2, :OSPFv3, :PIM, :RIP, :RIPng], :message=>"%{value} needs to be :BFD, :BGP, :\"IS-IS\", :OSPFv2, :OSPFv3, :PIM, :RIP, :RIPng"}, allow_nil: true

        # @return [Object, nil] Service policy to associate with the route domain.
        attribute :service_policy

        # @return [:present, :absent, nil] Whether the route domain should exist or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:enabled, :disabled, nil] Specifies whether the system enforces cross-routing restrictions or not.
        attribute :strict
        validates :strict, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Array<String>, String, nil] VLANs for the system to use in the route domain
        attribute :vlans
        validates :vlans, type: TypeGeneric.new(String)
      end
    end
  end
end
