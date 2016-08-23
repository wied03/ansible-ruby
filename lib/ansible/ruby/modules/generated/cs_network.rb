# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cs_network < Base
        # @return [String] Name (case sensitive) of the network.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Display text of the network.,If not specified, C(name) will be used as C(display_text).
        attribute :display_text
        validates :display_text, type: String

        # @return [String] Name of the offering for the network.,Required if C(state=present).
        attribute :network_offering
        validates :network_offering, type: String

        # @return [Object] The beginning IPv4 address of the network belongs to.,Only considered on create.
        attribute :start_ip

        # @return [Object] The ending IPv4 address of the network belongs to.,If not specified, value of C(start_ip) is used.,Only considered on create.
        attribute :end_ip

        # @return [Object] The gateway of the network.,Required for shared networks and isolated networks when it belongs to VPC.,Only considered on create.
        attribute :gateway

        # @return [Object] The netmask of the network.,Required for shared networks and isolated networks when it belongs to VPC.,Only considered on create.
        attribute :netmask

        # @return [Object] The beginning IPv6 address of the network belongs to.,Only considered on create.
        attribute :start_ipv6

        # @return [Object] The ending IPv6 address of the network belongs to.,If not specified, value of C(start_ipv6) is used.,Only considered on create.
        attribute :end_ipv6

        # @return [Object] CIDR of IPv6 network, must be at least /64.,Only considered on create.
        attribute :cidr_ipv6

        # @return [Object] The gateway of the IPv6 network.,Required for shared networks.,Only considered on create.
        attribute :gateway_ipv6

        # @return [Object] The ID or VID of the network.
        attribute :vlan

        # @return [Object] The ID or VID of the network.
        attribute :vpc

        # @return [Object] The isolated private vlan for this network.
        attribute :isolated_pvlan

        # @return [TrueClass] Cleanup old network elements.,Only considered on C(state=restarted).
        attribute :clean_up
        validates :clean_up, type: TrueClass

        # @return [String] Access control type.,Only considered on create.
        attribute :acl_type
        validates :acl_type, inclusion: {:in=>[:account, :domain], :message=>"%{value} needs to be :account, :domain"}, allow_nil: true

        # @return [String] The network domain.
        attribute :network_domain
        validates :network_domain, type: String

        # @return [String] State of the network.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :restarted], :message=>"%{value} needs to be :present, :absent, :restarted"}, allow_nil: true

        # @return [String] Name of the zone in which the network should be deployed.,If not set, default zone is used.
        attribute :zone
        validates :zone, type: String

        # @return [Object] Name of the project the network to be deployed in.
        attribute :project

        # @return [Object] Domain the network is related to.
        attribute :domain

        # @return [Object] Account the network is related to.
        attribute :account

        # @return [TrueClass] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, type: TrueClass
      end
    end
  end
end
