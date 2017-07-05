# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage SLB (Server Load Balancing) virtual server objects on A10 Networks devices via aXAPIv2.
      class A10_virtual_server < Base
        # @return [String, nil] set active-partition
        attribute :partition
        validates :partition, type: String

        # @return [String] The SLB (Server Load Balancing) virtual server name.
        attribute :virtual_server
        validates :virtual_server, presence: true, type: String

        # @return [String, nil] The SLB virtual server IPv4 address.
        attribute :virtual_server_ip
        validates :virtual_server_ip, type: String

        # @return [:enabled, :disabled, nil] The SLB virtual server status, such as enabled or disabled.
        attribute :virtual_server_status
        validates :virtual_server_status, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] A list of ports to create for the virtual server. Each list item should be a dictionary which specifies the C(port:) and C(type:), but can also optionally specify the C(service_group:) as well as the C(status:). See the examples below for details. This parameter is required when C(state) is C(present).
        attribute :virtual_server_ports
        validates :virtual_server_ports, type: TypeGeneric.new(Hash)

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled devices using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
