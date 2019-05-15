# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, restart and delete networks.
      class Cs_network < Base
        # @return [String] Name (case sensitive) of the network.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Display text of the network.,If not specified, C(name) will be used as C(display_text).
        attribute :display_text
        validates :display_text, type: String

        # @return [String, nil] Name of the offering for the network.,Required if C(state=present).
        attribute :network_offering
        validates :network_offering, type: String

        # @return [Object, nil] The beginning IPv4 address of the network belongs to.,Only considered on create.
        attribute :start_ip

        # @return [Object, nil] The ending IPv4 address of the network belongs to.,If not specified, value of C(start_ip) is used.,Only considered on create.
        attribute :end_ip

        # @return [String, nil] The gateway of the network.,Required for shared networks and isolated networks when it belongs to a VPC.,Only considered on create.
        attribute :gateway
        validates :gateway, type: String

        # @return [String, nil] The netmask of the network.,Required for shared networks and isolated networks when it belongs to a VPC.,Only considered on create.
        attribute :netmask
        validates :netmask, type: String

        # @return [Object, nil] The beginning IPv6 address of the network belongs to.,Only considered on create.
        attribute :start_ipv6

        # @return [Object, nil] The ending IPv6 address of the network belongs to.,If not specified, value of C(start_ipv6) is used.,Only considered on create.
        attribute :end_ipv6

        # @return [Object, nil] CIDR of IPv6 network, must be at least /64.,Only considered on create.
        attribute :cidr_ipv6

        # @return [Object, nil] The gateway of the IPv6 network.,Required for shared networks.,Only considered on create.
        attribute :gateway_ipv6

        # @return [Object, nil] The ID or VID of the network.
        attribute :vlan

        # @return [String, nil] Name of the VPC of the network.
        attribute :vpc
        validates :vpc, type: String

        # @return [Object, nil] The isolated private VLAN for this network.
        attribute :isolated_pvlan

        # @return [Boolean, nil] Cleanup old network elements.,Only considered on C(state=restarted).
        attribute :clean_up
        validates :clean_up, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:account, :domain, nil] Access control type for the VPC network tier.,Only considered on create.
        attribute :acl_type
        validates :acl_type, inclusion: {:in=>[:account, :domain], :message=>"%{value} needs to be :account, :domain"}, allow_nil: true

        # @return [String, nil] The name of the access control list for the VPC network tier.
        attribute :acl
        validates :acl, type: String

        # @return [Object, nil] Defines whether to allow subdomains to use networks dedicated to their parent domain(s).,Should be used with C(acl_type=domain).,Only considered on create.
        attribute :subdomain_access

        # @return [String, nil] The network domain.
        attribute :network_domain
        validates :network_domain, type: String

        # @return [:present, :absent, :restarted, nil] State of the network.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :restarted], :message=>"%{value} needs to be :present, :absent, :restarted"}, allow_nil: true

        # @return [String, nil] Name of the zone in which the network should be deployed.,If not set, default zone is used.
        attribute :zone
        validates :zone, type: String

        # @return [Object, nil] Name of the project the network to be deployed in.
        attribute :project

        # @return [Object, nil] Domain the network is related to.
        attribute :domain

        # @return [Object, nil] Account the network is related to.
        attribute :account

        # @return [Boolean, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
