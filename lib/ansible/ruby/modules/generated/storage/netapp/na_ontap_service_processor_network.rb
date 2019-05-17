# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Modify a ONTAP service processor network
      class Na_ontap_service_processor_network < Base
        # @return [:present, nil] Whether the specified service processor network should exist or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present], :message=>"%{value} needs to be :present"}, allow_nil: true

        # @return [:ipv4, :ipv6] Specify address class.
        attribute :address_type
        validates :address_type, presence: true, inclusion: {:in=>[:ipv4, :ipv6], :message=>"%{value} needs to be :ipv4, :ipv6"}

        # @return [Symbol] Specify whether to enable or disable the service processor network.
        attribute :is_enabled
        validates :is_enabled, presence: true, type: Symbol

        # @return [String] The node where the service processor network should be enabled
        attribute :node
        validates :node, presence: true, type: String

        # @return [:v4, :none, nil] Specify dhcp type.
        attribute :dhcp
        validates :dhcp, inclusion: {:in=>[:v4, :none], :message=>"%{value} needs to be :v4, :none"}, allow_nil: true

        # @return [Object, nil] Specify the gateway ip.
        attribute :gateway_ip_address

        # @return [Object, nil] Specify the service processor ip address.
        attribute :ip_address

        # @return [Object, nil] Specify the service processor netmask.
        attribute :netmask

        # @return [Object, nil] Specify the service processor prefix_length.
        attribute :prefix_length
      end
    end
  end
end
