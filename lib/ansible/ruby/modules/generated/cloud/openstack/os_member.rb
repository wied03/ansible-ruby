# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or Remove a member for a pool from the OpenStack load-balancer service.
      class Os_member < Base
        # @return [String] Name that has to be given to the member
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name or id of the pool that this member belongs to.
        attribute :pool
        validates :pool, presence: true, type: String

        # @return [Integer, nil] The protocol port number for the member.
        attribute :protocol_port
        validates :protocol_port, type: Integer

        # @return [String, nil] The IP address of the member.
        attribute :address
        validates :address, type: String

        # @return [Object, nil] The subnet ID the member service is accessible from.
        attribute :subnet_id

        # @return [:yes, :no, nil] If the module should wait for the load balancer to be ACTIVE.
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] The amount of time the module should wait for the load balancer to get into ACTIVE state.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Object, nil] Ignored. Present for backwards compatibility
        attribute :availability_zone
      end
    end
  end
end
