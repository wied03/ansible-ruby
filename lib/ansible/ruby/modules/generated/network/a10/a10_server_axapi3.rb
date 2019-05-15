# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage SLB (Server Load Balancer) server objects on A10 Networks devices via aXAPIv3.
      class A10_server_axapi3 < Base
        # @return [Object] The SLB (Server Load Balancer) server name.
        attribute :server_name
        validates :server_name, presence: true

        # @return [String] The SLB (Server Load Balancer) server IPv4 address.
        attribute :server_ip
        validates :server_ip, presence: true, type: String

        # @return [:enable, :disable, nil] The SLB (Server Load Balancer) virtual server status.
        attribute :server_status
        validates :server_status, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] A list of ports to create for the server. Each list item should be a dictionary which specifies the C(port:) and C(protocol:).
        attribute :server_ports
        validates :server_ports, type: TypeGeneric.new(Hash)

        # @return [:create, :update, :remove, nil] Create, Update or Remove SLB server. For create and update operation, we use the IP address and server name specified in the POST message. For delete operation, we use the server name in the request URI.
        attribute :operation
        validates :operation, inclusion: {:in=>[:create, :update, :remove], :message=>"%{value} needs to be :create, :update, :remove"}, allow_nil: true

        # @return [String, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled devices using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, type: String
      end
    end
  end
end
