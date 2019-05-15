# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Bind static paths to EPGs on Cisco ACI fabrics.
      class Aci_static_binding_to_epg < Base
        # @return [String, nil] Name of an existing tenant.
        attribute :tenant
        validates :tenant, type: String

        # @return [String, nil] Name of an existing application network profile, that will contain the EPGs.
        attribute :ap
        validates :ap, type: String

        # @return [String, nil] The name of the end point group.
        attribute :epg
        validates :epg, type: String

        # @return [Object, nil] Description for the static path to EPG binding.
        attribute :description

        # @return [Integer, nil] The encapsulation ID associating the C(epg) with the interface path.,This acts as the secondary C(encap_id) when using micro-segmentation.,Accepted values are any valid encap ID for specified encap, currently ranges between C(1) and C(4096).
        attribute :encap_id
        validates :encap_id, type: Integer

        # @return [Object, nil] Determines the primary encapsulation ID associating the C(epg) with the interface path when using micro-segmentation.,Accepted values are any valid encap ID for specified encap, currently ranges between C(1) and C(4096).
        attribute :primary_encap_id

        # @return [:immediate, :lazy, nil] The Deployement Immediacy of Static EPG on PC, VPC or Interface.,The APIC defaults to C(lazy) when unset during creation.
        attribute :deploy_immediacy
        validates :deploy_immediacy, inclusion: {:in=>[:immediate, :lazy], :message=>"%{value} needs to be :immediate, :lazy"}, allow_nil: true

        # @return [:"802.1p", :access, :native, :regular, :tagged, :trunk, :untagged, nil] Determines how layer 2 tags will be read from and added to frames.,Values C(802.1p) and C(native) are identical.,Values C(access) and C(untagged) are identical.,Values C(regular), C(tagged) and C(trunk) are identical.,The APIC defaults to C(trunk) when unset during creation.
        attribute :interface_mode
        validates :interface_mode, inclusion: {:in=>[:"802.1p", :access, :native, :regular, :tagged, :trunk, :untagged], :message=>"%{value} needs to be :\"802.1p\", :access, :native, :regular, :tagged, :trunk, :untagged"}, allow_nil: true

        # @return [:fex, :port_channel, :switch_port, :vpc, nil] The type of interface for the static EPG deployement.
        attribute :interface_type
        validates :interface_type, inclusion: {:in=>[:fex, :port_channel, :switch_port, :vpc], :message=>"%{value} needs to be :fex, :port_channel, :switch_port, :vpc"}, allow_nil: true

        # @return [Integer, nil] The pod number part of the tDn.,C(pod_id) is usually an integer below C(10).
        attribute :pod_id
        validates :pod_id, type: Integer

        # @return [Integer, nil] The switch ID(s) that the C(interface) belongs to.,When C(interface_type) is C(switch_port), C(port_channel), or C(fex), then C(leafs) is a string of the leaf ID.,When C(interface_type) is C(vpc), then C(leafs) is a list with both leaf IDs.,The C(leafs) value is usually something like '101' or '101-102' depending on C(connection_type).
        attribute :leafs
        validates :leafs, type: Integer

        # @return [String, nil] The C(interface) string value part of the tDn.,Usually a policy group like C(test-IntPolGrp) or an interface of the following format C(1/7) depending on C(interface_type).
        attribute :interface
        validates :interface, type: String

        # @return [Object, nil] The C(extpaths) integer value part of the tDn.,C(extpaths) is only used if C(interface_type) is C(fex).,Usually something like C(1011).
        attribute :extpaths

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end
