# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage fabric interface policy leaf policy groups on Cisco ACI fabrics.
      class Aci_interface_policy_leaf_policy_group < Base
        # @return [String, nil] Name of the leaf policy group to be added/deleted.
        attribute :policy_group
        validates :policy_group, type: String

        # @return [String, nil] Description for the leaf policy group to be created.
        attribute :description
        validates :description, type: String

        # @return [:leaf, :link, :node] Selector for the type of leaf policy group we want to create.,C(leaf) for Leaf Access Port Policy Group,C(link) for Port Channel (PC),C(node) for Virtual Port Channel (VPC)
        attribute :lag_type
        validates :lag_type, presence: true, expression_inclusion: {:in=>[:leaf, :link, :node], :message=>"%{value} needs to be :leaf, :link, :node"}

        # @return [String, nil] Choice of link_level_policy to be used as part of the leaf policy group to be created.
        attribute :link_level_policy
        validates :link_level_policy, type: String

        # @return [Object, nil] Choice of cdp_policy to be used as part of the leaf policy group to be created.
        attribute :cdp_policy

        # @return [Object, nil] Choice of mcp_policy to be used as part of the leaf policy group to be created.
        attribute :mcp_policy

        # @return [Object, nil] Choice of lldp_policy to be used as part of the leaf policy group to be created.
        attribute :lldp_policy

        # @return [Object, nil] Choice of stp_interface_policy to be used as part of the leaf policy group to be created.
        attribute :stp_interface_policy

        # @return [Object, nil] Choice of egress_data_plane_policing_policy to be used as part of the leaf policy group to be created.
        attribute :egress_data_plane_policing_policy

        # @return [Object, nil] Choice of ingress_data_plane_policing_policy to be used as part of the leaf policy group to be created.
        attribute :ingress_data_plane_policing_policy

        # @return [Object, nil] Choice of priority_flow_control_policy to be used as part of the leaf policy group to be created.
        attribute :priority_flow_control_policy

        # @return [String, nil] Choice of fibre_channel_interface_policy to be used as part of the leaf policy group to be created.
        attribute :fibre_channel_interface_policy
        validates :fibre_channel_interface_policy, type: String

        # @return [Object, nil] Choice of slow_drain_policy to be used as part of the leaf policy group to be created.
        attribute :slow_drain_policy

        # @return [Object, nil] Choice of port_channel_policy to be used as part of the leaf policy group to be created.
        attribute :port_channel_policy

        # @return [Object, nil] Choice of monitoring_policy to be used as part of the leaf policy group to be created.
        attribute :monitoring_policy

        # @return [Object, nil] Choice of storm_control_interface_policy to be used as part of the leaf policy group to be created.
        attribute :storm_control_interface_policy

        # @return [Object, nil] Choice of l2_interface_policy to be used as part of the leaf policy group to be created.
        attribute :l2_interface_policy

        # @return [Object, nil] Choice of port_security_policy to be used as part of the leaf policy group to be created.
        attribute :port_security_policy

        # @return [Object, nil] Choice of attached_entity_profile (AEP) to be used as part of the leaf policy group to be created.
        attribute :aep

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end
