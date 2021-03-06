# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # An Ansible module to Create, Delete shared loadbalancers in CenturyLink Cloud.
      class Clc_loadbalancer < Base
        # @return [String] The name of the loadbalancer
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] A description for the loadbalancer
        attribute :description

        # @return [Object] The alias of your CLC Account
        attribute :alias
        validates :alias, presence: true

        # @return [Object] The location of the datacenter where the load balancer resides in
        attribute :location
        validates :location, presence: true

        # @return [:leastConnection, :roundRobin, nil] -The balancing method for the load balancer pool
        attribute :method
        validates :method, expression_inclusion: {:in=>[:leastConnection, :roundRobin], :message=>"%{value} needs to be :leastConnection, :roundRobin"}, allow_nil: true

        # @return [:standard, :sticky, nil] The persistence method for the load balancer
        attribute :persistence
        validates :persistence, expression_inclusion: {:in=>[:standard, :sticky], :message=>"%{value} needs to be :standard, :sticky"}, allow_nil: true

        # @return [80, 443, nil] Port to configure on the public-facing side of the load balancer pool
        attribute :port
        validates :port, expression_inclusion: {:in=>[80, 443], :message=>"%{value} needs to be 80, 443"}, allow_nil: true

        # @return [Object, nil] A list of nodes that needs to be added to the load balancer pool
        attribute :nodes

        # @return [:enabled, :disabled, nil] The status of the loadbalancer
        attribute :status
        validates :status, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:present, :absent, :port_absent, :nodes_present, :nodes_absent, nil] Whether to create or delete the load balancer pool
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :port_absent, :nodes_present, :nodes_absent], :message=>"%{value} needs to be :present, :absent, :port_absent, :nodes_present, :nodes_absent"}, allow_nil: true
      end
    end
  end
end
