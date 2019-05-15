# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage route domains on a BIG-IP.
      class Bigip_routedomain < Base
        # @return [String, nil] The name of the route domain.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] The bandwidth controller for the route domain.
        attribute :bwc_policy

        # @return [Object, nil] The maximum number of concurrent connections allowed for the route domain. Setting this to C(0) turns off connection limits.
        attribute :connection_limit

        # @return [Object, nil] Specifies descriptive text that identifies the route domain.
        attribute :description

        # @return [Object, nil] The eviction policy to use with this route domain. Apply an eviction policy to provide customized responses to flow overflows and slow flows on the route domain.
        attribute :flow_eviction_policy

        # @return [Integer, nil] The unique identifying integer representing the route domain.,This field is required when creating a new route domain.,In version 2.5, this value is no longer used to reference a route domain when making modifications to it (for instance during update and delete operations). Instead, the C(name) parameter is used. In version 2.6, the C(name) value will become a required parameter.
        attribute :id
        validates :id, type: Integer

        # @return [Object, nil] Specifies the route domain the system searches when it cannot find a route in the configured domain.
        attribute :parent

        # @return [String, nil] Partition to create the route domain on. Partitions cannot be updated once they are created.
        attribute :partition
        validates :partition, type: String

        # @return [:none, :BFD, :BGP, :"IS-IS", :OSPFv2, :OSPFv3, :PIM, :RIP, :RIPng, nil] Dynamic routing protocols for the system to use in the route domain.
        attribute :routing_protocol
        validates :routing_protocol, inclusion: {:in=>[:none, :BFD, :BGP, :"IS-IS", :OSPFv2, :OSPFv3, :PIM, :RIP, :RIPng], :message=>"%{value} needs to be :none, :BFD, :BGP, :\"IS-IS\", :OSPFv2, :OSPFv3, :PIM, :RIP, :RIPng"}, allow_nil: true

        # @return [Object, nil] Service policy to associate with the route domain.
        attribute :service_policy

        # @return [:present, :absent, nil] Whether the route domain should exist or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Specifies whether the system enforces cross-routing restrictions or not.
        attribute :strict

        # @return [Array<String>, String, nil] VLANs for the system to use in the route domain.
        attribute :vlans
        validates :vlans, type: TypeGeneric.new(String)
      end
    end
  end
end
