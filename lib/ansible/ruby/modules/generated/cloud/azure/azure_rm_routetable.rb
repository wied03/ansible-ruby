# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update or delete a route table.
      class Azure_rm_routetable < Base
        # @return [String] name of resource group.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] name of the route table.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Assert the state of the route table. Use 'present' to create or update and 'absent' to delete.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Symbol, nil] Specified whether to disable the routes learned by BGP on that route table.
        attribute :disable_bgp_route_propagation
        validates :disable_bgp_route_propagation, type: Symbol

        # @return [Object, nil] Region of the resource.,Derived from C(resource_group) if not specified
        attribute :location
      end
    end
  end
end
