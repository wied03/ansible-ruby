# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to add/remove a resource pool to/from vCenter
      class Vmware_resource_pool < Base
        # @return [String] Name of the datacenter to add the host.
        attribute :datacenter
        validates :datacenter, presence: true, type: String

        # @return [String] Name of the cluster to add the host.
        attribute :cluster
        validates :cluster, presence: true, type: String

        # @return [String] Resource pool name to manage.
        attribute :resource_pool
        validates :resource_pool, presence: true, type: String

        # @return [Boolean, nil] In a resource pool with an expandable reservation, the reservation on a resource pool can grow beyond the specified value.
        attribute :cpu_expandable_reservations
        validates :cpu_expandable_reservations, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] Amount of resource that is guaranteed available to the virtual machine or resource pool.
        attribute :cpu_reservation
        validates :cpu_reservation, type: Integer

        # @return [Integer, nil] The utilization of a virtual machine/resource pool will not exceed this limit, even if there are available resources.,The default value -1 indicates no limit.
        attribute :cpu_limit
        validates :cpu_limit, type: Integer

        # @return [:high, :custom, :low, :normal, nil] Memory shares are used in case of resource contention.
        attribute :cpu_shares
        validates :cpu_shares, expression_inclusion: {:in=>[:high, :custom, :low, :normal], :message=>"%{value} needs to be :high, :custom, :low, :normal"}, allow_nil: true

        # @return [Boolean, nil] In a resource pool with an expandable reservation, the reservation on a resource pool can grow beyond the specified value.
        attribute :mem_expandable_reservations
        validates :mem_expandable_reservations, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] Amount of resource that is guaranteed available to the virtual machine or resource pool.
        attribute :mem_reservation
        validates :mem_reservation, type: Integer

        # @return [Integer, nil] The utilization of a virtual machine/resource pool will not exceed this limit, even if there are available resources.,The default value -1 indicates no limit.
        attribute :mem_limit
        validates :mem_limit, type: Integer

        # @return [:high, :custom, :low, :normal, nil] Memory shares are used in case of resource contention.
        attribute :mem_shares
        validates :mem_shares, expression_inclusion: {:in=>[:high, :custom, :low, :normal], :message=>"%{value} needs to be :high, :custom, :low, :normal"}, allow_nil: true

        # @return [:present, :absent, nil] Add or remove the resource pool
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
