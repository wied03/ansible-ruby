# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage Fabric Node Members on Cisco ACI fabrics.
      class Aci_fabric_node < Base
        # @return [Integer, nil] The pod id of the new Fabric Node Member.
        attribute :pod_id
        validates :pod_id, type: Integer

        # @return [String, nil] Serial Number for the new Fabric Node Member.
        attribute :serial
        validates :serial, type: String

        # @return [Integer, nil] Node ID Number for the new Fabric Node Member.
        attribute :node_id
        validates :node_id, type: Integer

        # @return [String, nil] Switch Name for the new Fabric Node Member.
        attribute :switch
        validates :switch, type: String

        # @return [Object, nil] Description for the new Fabric Node Member.
        attribute :description

        # @return [:leaf, :spine, :unspecified, nil] Role for the new Fabric Node Member.
        attribute :role
        validates :role, inclusion: {:in=>[:leaf, :spine, :unspecified], :message=>"%{value} needs to be :leaf, :spine, :unspecified"}, allow_nil: true

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end
