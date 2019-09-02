# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or Remove load balancer from the OpenStack load-balancer service.
      class Os_loadbalancer < Base
        # @return [String] Name that has to be given to the load balancer
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The name or id of the network for the virtual IP of the load balancer. One of vip_network, vip_subnet, or vip_port must be specified.
        attribute :vip_network
        validates :vip_network, type: String

        # @return [String, nil] The name or id of the subnet for the virtual IP of the load balancer. One of vip_network, vip_subnet, or vip_port must be specified.
        attribute :vip_subnet
        validates :vip_subnet, type: String

        # @return [Object, nil] The name or id of the load balancer virtual IP port. One of vip_network, vip_subnet, or vip_port must be specified.
        attribute :vip_port

        # @return [String, nil] IP address of the load balancer virtual IP.
        attribute :vip_address
        validates :vip_address, type: String

        # @return [:yes, :no, nil] If the module should wait for the load balancer to be created.
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
