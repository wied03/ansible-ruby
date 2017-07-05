# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage SLB (Server Load Balancing) service-group objects on A10 Networks devices via aXAPIv2.
      class A10_service_group < Base
        # @return [String, nil] set active-partition
        attribute :partition
        validates :partition, type: String

        # @return [String] The SLB (Server Load Balancing) service-group name
        attribute :service_group
        validates :service_group, presence: true, type: String

        # @return [:tcp, :udp, nil] The SLB service-group protocol of TCP or UDP.
        attribute :service_group_protocol
        validates :service_group_protocol, inclusion: {:in=>[:tcp, :udp], :message=>"%{value} needs to be :tcp, :udp"}, allow_nil: true

        # @return [:"round-robin", :"weighted-rr", :"least-connection", :"weighted-least-connection", :"service-least-connection", :"service-weighted-least-connection", :"fastest-response", :"least-request", :"round-robin-strict", :"src-ip-only-hash", :"src-ip-hash", nil] The SLB service-group load balancing method, such as round-robin or weighted-rr.
        attribute :service_group_method
        validates :service_group_method, inclusion: {:in=>[:"round-robin", :"weighted-rr", :"least-connection", :"weighted-least-connection", :"service-least-connection", :"service-weighted-least-connection", :"fastest-response", :"least-request", :"round-robin-strict", :"src-ip-only-hash", :"src-ip-hash"], :message=>"%{value} needs to be :\"round-robin\", :\"weighted-rr\", :\"least-connection\", :\"weighted-least-connection\", :\"service-least-connection\", :\"service-weighted-least-connection\", :\"fastest-response\", :\"least-request\", :\"round-robin-strict\", :\"src-ip-only-hash\", :\"src-ip-hash\""}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] A list of servers to add to the service group. Each list item should be a dictionary which specifies the C(server:) and C(port:), but can also optionally specify the C(status:). See the examples below for details.
        attribute :servers
        validates :servers, type: TypeGeneric.new(Hash)

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled devices using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
