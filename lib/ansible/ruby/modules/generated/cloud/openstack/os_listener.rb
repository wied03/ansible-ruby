# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or Remove a listener for a load balancer from the OpenStack load-balancer service.
      class Os_listener < Base
        # @return [String] Name that has to be given to the listener
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name or id of the load balancer that this listener belongs to.
        attribute :loadbalancer
        validates :loadbalancer, presence: true, type: String

        # @return [:HTTP, :HTTPS, :TCP, :TERMINATED_HTTPS, nil] The protocol for the listener.
        attribute :protocol
        validates :protocol, expression_inclusion: {:in=>[:HTTP, :HTTPS, :TCP, :TERMINATED_HTTPS], :message=>"%{value} needs to be :HTTP, :HTTPS, :TCP, :TERMINATED_HTTPS"}, allow_nil: true

        # @return [Integer, nil] The protocol port number for the listener.
        attribute :protocol_port
        validates :protocol_port, type: Integer

        # @return [:yes, :no, nil] If the module should wait for the load balancer to be ACTIVE.
        attribute :wait
        validates :wait, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] The amount of time the module should wait for the load balancer to get into ACTIVE state.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Object, nil] Ignored. Present for backwards compatibility
        attribute :availability_zone
      end
    end
  end
end
