# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or Remove a pool from the OpenStack load-balancer service.
      class Os_pool < Base
        # @return [String] Name that has to be given to the pool
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The name or id of the load balancer that this pool belongs to. Either loadbalancer or listener must be specified for pool creation.
        attribute :loadbalancer
        validates :loadbalancer, type: String

        # @return [Object, nil] The name or id of the listener that this pool belongs to. Either loadbalancer or listener must be specified for pool creation.
        attribute :listener

        # @return [:HTTP, :HTTPS, :PROXY, :TCP, :UDP, nil] The protocol for the pool.
        attribute :protocol
        validates :protocol, inclusion: {:in=>[:HTTP, :HTTPS, :PROXY, :TCP, :UDP], :message=>"%{value} needs to be :HTTP, :HTTPS, :PROXY, :TCP, :UDP"}, allow_nil: true

        # @return [:LEAST_CONNECTIONS, :ROUND_ROBIN, :SOURCE_IP, nil] The load balancing algorithm for the pool.
        attribute :lb_algorithm
        validates :lb_algorithm, inclusion: {:in=>[:LEAST_CONNECTIONS, :ROUND_ROBIN, :SOURCE_IP], :message=>"%{value} needs to be :LEAST_CONNECTIONS, :ROUND_ROBIN, :SOURCE_IP"}, allow_nil: true

        # @return [String, nil] If the module should wait for the pool to be ACTIVE.
        attribute :wait
        validates :wait, type: String

        # @return [Integer, nil] The amount of time the module should wait for the pool to get into ACTIVE state.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Object, nil] Ignored. Present for backwards compatibility
        attribute :availability_zone
      end
    end
  end
end
