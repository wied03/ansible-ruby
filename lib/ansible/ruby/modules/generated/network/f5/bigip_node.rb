# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages F5 BIG-IP LTM nodes.
      class Bigip_node < Base
        # @return [:present, :absent, :enabled, :disabled, :offline, nil] Specifies the current state of the node. C(enabled) (All traffic allowed), specifies that system sends traffic to this node regardless of the node's state. C(disabled) (Only persistent or active connections allowed), Specifies that the node can handle only persistent or active connections. C(offline) (Only active connections allowed), Specifies that the node can handle only active connections. In all cases except C(absent), the node will be created if it does not yet exist.,Be particularly careful about changing the status of a node whose FQDN cannot be resolved. These situations disable your ability to change their C(state) to C(disabled) or C(offline). They will remain in an *Unavailable - Enabled* state.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :enabled, :disabled, :offline], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled, :offline"}, allow_nil: true

        # @return [String] Specifies the name of the node.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:and_list, :m_of_n, :single, nil] Monitor rule type when C(monitors) is specified. When creating a new pool, if this value is not specified, the default of 'and_list' will be used.,Both C(single) and C(and_list) are functionally identical since BIG-IP considers all monitors as "a list". BIG=IP either has a list of many, or it has a list of one. Where they differ is in the extra guards that C(single) provides; namely that it only allows a single monitor.
        attribute :monitor_type
        validates :monitor_type, expression_inclusion: {:in=>[:and_list, :m_of_n, :single], :message=>"%{value} needs to be :and_list, :m_of_n, :single"}, allow_nil: true

        # @return [Object, nil] Monitor quorum value when C(monitor_type) is C(m_of_n).
        attribute :quorum

        # @return [Array<String>, String, nil] Specifies the health monitors that the system currently uses to monitor this node.
        attribute :monitors
        validates :monitors, type: TypeGeneric.new(String)

        # @return [Object, nil] IP address of the node. This can be either IPv4 or IPv6. When creating a new node, one of either C(address) or C(fqdn) must be provided. This parameter cannot be updated after it is set.
        attribute :address

        # @return [String, nil] FQDN name of the node. This can be any name that is a valid RFC 1123 DNS name. Therefore, the only characters that can be used are "A" to "Z", "a" to "z", "0" to "9", the hyphen ("-") and the period (".").,FQDN names must include at lease one period; delineating the host from the domain. ex. C(host.domain).,FQDN names must end with a letter or a number.,When creating a new node, one of either C(address) or C(fqdn) must be provided. This parameter cannot be updated after it is set.
        attribute :fqdn
        validates :fqdn, type: String

        # @return [:ipv4, :ipv6, :all, nil] Specifies whether the FQDN of the node resolves to an IPv4 or IPv6 address.,When creating a new node, if this parameter is not specified and C(fqdn) is specified, this parameter will default to C(ipv4).,This parameter cannot be changed after it has been set.
        attribute :fqdn_address_type
        validates :fqdn_address_type, expression_inclusion: {:in=>[:ipv4, :ipv6, :all], :message=>"%{value} needs to be :ipv4, :ipv6, :all"}, allow_nil: true

        # @return [Symbol, nil] Specifies whether the system automatically creates ephemeral nodes using the IP addresses returned by the resolution of a DNS query for a node defined by an FQDN.,When C(yes), the system generates an ephemeral node for each IP address returned in response to a DNS query for the FQDN of the node. Additionally, when a DNS response indicates the IP address of an ephemeral node no longer exists, the system deletes the ephemeral node.,When C(no), the system resolves a DNS query for the FQDN of the node with the single IP address associated with the FQDN.,When creating a new node, if this parameter is not specified and C(fqdn) is specified, this parameter will default to C(yes).,This parameter cannot be changed after it has been set.
        attribute :fqdn_auto_populate
        validates :fqdn_auto_populate, type: Symbol

        # @return [Object, nil] Specifies the interval in which a query occurs, when the DNS server is up. The associated monitor attempts to probe three times, and marks the server down if it there is no response within the span of three times the interval value, in seconds.,This parameter accepts a value of C(ttl) to query based off of the TTL of the FQDN. The default TTL interval is akin to specifying C(3600).,When creating a new node, if this parameter is not specified and C(fqdn) is specified, this parameter will default to C(3600).
        attribute :fqdn_up_interval

        # @return [Object, nil] Specifies the interval in which a query occurs, when the DNS server is down. The associated monitor continues polling as long as the DNS server is down.,When creating a new node, if this parameter is not specified and C(fqdn) is specified, this parameter will default to C(5).
        attribute :fqdn_down_interval

        # @return [String, nil] Specifies descriptive text that identifies the node.,You can remove a description by either specifying an empty string, or by specifying the special value C(none).
        attribute :description
        validates :description, type: String

        # @return [Object, nil] Node connection limit. Setting this to 0 disables the limit.
        attribute :connection_limit

        # @return [Object, nil] Node rate limit (connections-per-second). Setting this to 0 disables the limit.
        attribute :rate_limit

        # @return [Object, nil] Node ratio weight. Valid values range from 1 through 100.,When creating a new node, if this parameter is not specified, the default of C(1) will be used.
        attribute :ratio

        # @return [Object, nil] The dynamic ratio number for the node. Used for dynamic ratio load balancing.,When creating a new node, if this parameter is not specified, the default of C(1) will be used.
        attribute :dynamic_ratio

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String
      end
    end
  end
end
