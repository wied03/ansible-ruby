# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage SLB (Server Load Balancer) server objects on A10 Networks devices via aXAPIv2.
      class A10_server < Base
        # @return [String, nil] set active-partition
        attribute :partition
        validates :partition, type: String

        # @return [Object] The SLB (Server Load Balancer) server name.
        attribute :server_name
        validates :server_name, presence: true

        # @return [String, nil] The SLB server IPv4 address.
        attribute :server_ip
        validates :server_ip, type: String

        # @return [:enabled, :disabled, nil] The SLB virtual server status.
        attribute :server_status
        validates :server_status, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] A list of ports to create for the server. Each list item should be a dictionary which specifies the C(port:) and C(protocol:), but can also optionally specify the C(status:). See the examples below for details. This parameter is required when C(state) is C(present).
        attribute :server_ports
        validates :server_ports, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, nil] This is to specify the operation to create, update or remove SLB server.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled devices using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, type: String
      end
    end
  end
end
