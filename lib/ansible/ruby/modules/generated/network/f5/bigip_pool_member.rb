# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages F5 BIG-IP LTM pool members via iControl SOAP API.
      class Bigip_pool_member < Base
        # @return [String, nil] Name of the node to create, or re-use, when creating a new pool member.,This parameter is optional and, if not specified, a node name will be created automatically from either the specified C(address) or C(fqdn).,The C(enabled) state is an alias of C(present).
        attribute :name
        validates :name, type: String

        # @return [:present, :absent, :enabled, :disabled, :forced_offline] Pool member state.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :enabled, :disabled, :forced_offline], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled, :forced_offline"}

        # @return [String] Pool name. This pool must exist.
        attribute :pool
        validates :pool, presence: true, type: String

        # @return [String, nil] Partition
        attribute :partition
        validates :partition, type: String

        # @return [Object, nil] IP address of the pool member. This can be either IPv4 or IPv6. When creating a new pool member, one of either C(address) or C(fqdn) must be provided. This parameter cannot be updated after it is set.
        attribute :address

        # @return [Object, nil] FQDN name of the pool member. This can be any name that is a valid RFC 1123 DNS name. Therefore, the only characters that can be used are "A" to "Z", "a" to "z", "0" to "9", the hyphen ("-") and the period (".").,FQDN names must include at lease one period; delineating the host from the domain. ex. C(host.domain).,FQDN names must end with a letter or a number.,When creating a new pool member, one of either C(address) or C(fqdn) must be provided. This parameter cannot be updated after it is set.
        attribute :fqdn

        # @return [Integer] Pool member port.,This value cannot be changed after it has been set.
        attribute :port
        validates :port, presence: true, type: Integer

        # @return [Integer, nil] Pool member connection limit. Setting this to 0 disables the limit.
        attribute :connection_limit
        validates :connection_limit, type: Integer

        # @return [String, nil] Pool member description.
        attribute :description
        validates :description, type: String

        # @return [Integer, nil] Pool member rate limit (connections-per-second). Setting this to 0 disables the limit.
        attribute :rate_limit
        validates :rate_limit, type: Integer

        # @return [Integer, nil] Pool member ratio weight. Valid values range from 1 through 100. New pool members -- unless overridden with this value -- default to 1.
        attribute :ratio
        validates :ratio, type: Integer

        # @return [Object, nil] When state is C(absent) attempts to remove the node that the pool member references.,The node will not be removed if it is still referenced by other pool members. If this happens, the module will not raise an error.,Setting this to C(yes) disables this behavior.
        attribute :preserve_node

        # @return [String, Integer, nil] Specifies a number representing the priority group for the pool member.,When adding a new member, the default is 0, meaning that the member has no priority.,To specify a priority, you must activate priority group usage when you create a new pool or when adding or removing pool members. When activated, the system load balances traffic according to the priority group number assigned to the pool member.,The higher the number, the higher the priority, so a member with a priority of 3 has higher priority than a member with a priority of 1.
        attribute :priority_group
        validates :priority_group, type: MultipleTypes.new(String, Integer)

        # @return [Object, nil] Specifies whether the system automatically creates ephemeral nodes using the IP addresses returned by the resolution of a DNS query for a node defined by an FQDN.,When C(yes), the system generates an ephemeral node for each IP address returned in response to a DNS query for the FQDN of the node. Additionally, when a DNS response indicates the IP address of an ephemeral node no longer exists, the system deletes the ephemeral node.,When C(no), the system resolves a DNS query for the FQDN of the node with the single IP address associated with the FQDN.,When creating a new pool member, the default for this parameter is C(yes).,This parameter is ignored when C(reuse_nodes) is C(yes).
        attribute :fqdn_auto_populate

        # @return [Boolean, nil] Reuses node definitions if requested.
        attribute :reuse_nodes
        validates :reuse_nodes, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
