# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manipulate static routes on a BIG-IP.
      class Bigip_static_route < Base
        # @return [String] Name of the static route.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Descriptive text that identifies the route.
        attribute :description

        # @return [String, nil] Specifies an IP address for the static entry in the routing table. When creating a new static route, this value is required.,This value cannot be changed once it is set.
        attribute :destination
        validates :destination, type: String

        # @return [String, nil] The netmask for the static route. When creating a new static route, this value is required.,This value can be in either IP or CIDR format.,This value cannot be changed once it is set.
        attribute :netmask
        validates :netmask, type: String

        # @return [String, nil] Specifies the router for the system to use when forwarding packets to the destination host or network. Also known as the next-hop router address. This can be either an IPv4 or IPv6 address. When it is an IPv6 address that starts with C(FE80:), the address will be treated as a link-local address. This requires that the C(vlan) parameter also be supplied.
        attribute :gateway_address
        validates :gateway_address, type: String

        # @return [Object, nil] Specifies the VLAN or Tunnel through which the system forwards packets to the destination. When C(gateway_address) is a link-local IPv6 address, this value is required
        attribute :vlan

        # @return [Object, nil] Specifies the pool through which the system forwards packets to the destination.
        attribute :pool

        # @return [Symbol, nil] Specifies that the system drops packets sent to the destination.
        attribute :reject
        validates :reject, type: Symbol

        # @return [Object, nil] Specifies a specific maximum transmission unit (MTU).
        attribute :mtu

        # @return [Object, nil] The route domain id of the system. When creating a new static route, if this value is not specified, a default value of C(0) will be used.,This value cannot be changed once it is set.
        attribute :route_domain

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the static route exists.,When C(absent), ensures that the static does not exist.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
