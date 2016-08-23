# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class A10_service_group < Base
        # @return [String] hostname or ip of your A10 Networks device
        attribute :host
        validates :host, presence: true, inclusion: {:in=>[], :message=>"%{value} needs to be "}

        # @return [String] admin account of your A10 Networks device
        attribute :username
        validates :username, presence: true, inclusion: {:in=>[], :message=>"%{value} needs to be "}

        # @return [String] admin password of your A10 Networks device
        attribute :password
        validates :password, presence: true, inclusion: {:in=>[], :message=>"%{value} needs to be "}

        # @return [String] slb service-group name
        attribute :service_group
        validates :service_group, presence: true, inclusion: {:in=>[], :message=>"%{value} needs to be "}

        # @return [String] slb service-group protocol
        attribute :service_group_protocol
        validates :service_group_protocol, inclusion: {:in=>[:tcp, :udp], :message=>"%{value} needs to be :tcp, :udp"}, allow_nil: true

        # @return [String] slb service-group loadbalancing method
        attribute :service_group_method
        validates :service_group_method, inclusion: {:in=>[:"round-robin", :"weighted-rr", :"least-connection", :"weighted-least-connection", :"service-least-connection", :"service-weighted-least-connection", :"fastest-response", :"least-request", :"round-robin-strict", :"src-ip-only-hash", :"src-ip-hash"], :message=>"%{value} needs to be :\"round-robin\", :\"weighted-rr\", :\"least-connection\", :\"weighted-least-connection\", :\"service-least-connection\", :\"service-weighted-least-connection\", :\"fastest-response\", :\"least-request\", :\"round-robin-strict\", :\"src-ip-only-hash\", :\"src-ip-hash\""}, allow_nil: true

        # @return [Array] A list of servers to add to the service group. Each list item should be a dictionary which specifies the C(server:) and C(port:), but can also optionally specify the C(status:). See the examples below for details.
        attribute :servers
        validates :servers, inclusion: {:in=>[], :message=>"%{value} needs to be "}, allow_nil: true

        # @return [String] If C(yes), any changes will cause a write of the running configuration to non-volatile memory. This will save I(all) configuration changes, including those that may have been made manually or through other modules, so care should be taken when specifying C(yes).
        attribute :write_config
        validates :write_config, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] If C(no), SSL certificates will not be validated. This should only be used on personally controlled devices using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
