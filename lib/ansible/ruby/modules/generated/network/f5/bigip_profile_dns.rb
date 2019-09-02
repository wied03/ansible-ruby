# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage DNS profiles on a BIG-IP. Many DNS profiles; each with their own adjustments to the standard C(dns) profile. Users of this module should be aware that many of the adjustable knobs have no module default. Instead, the default is assigned by the BIG-IP system itself which, in most cases, is acceptable.
      class Bigip_profile_dns < Base
        # @return [String] Specifies the name of the DNS profile.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Specifies the profile from which this profile inherits settings.,When creating a new profile, if this parameter is not specified, the default is the system-supplied C(dns) profile.
        attribute :parent

        # @return [Symbol, nil] Specifies whether the DNS Express engine is enabled.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.,The DNS Express engine receives zone transfers from the authoritative DNS server for the zone. If the C(enable_zone_transfer) setting is also C(yes) on this profile, the DNS Express engine also responds to zone transfer requests made by the nameservers configured as zone transfer clients for the DNS Express zone.
        attribute :enable_dns_express
        validates :enable_dns_express, type: Symbol

        # @return [Symbol, nil] Specifies whether the system answers zone transfer requests for a DNS zone created on the system.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.,The C(enable_dns_express) and C(enable_zone_transfer) settings on a DNS profile affect how the system responds to zone transfer requests.,When the C(enable_dns_express) and C(enable_zone_transfer) settings are both C(yes), if a zone transfer request matches a DNS Express zone, then DNS Express answers the request.,When the C(enable_dns_express) setting is C(no) and the C(enable_zone_transfer) setting is C(yes), the BIG-IP system processes zone transfer requests based on the last action and answers the request from local BIND or a pool member.
        attribute :enable_zone_transfer
        validates :enable_zone_transfer, type: Symbol

        # @return [Symbol, nil] Specifies whether the system signs responses with DNSSEC keys and replies to DNSSEC specific queries (e.g., DNSKEY query type).,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
        attribute :enable_dnssec
        validates :enable_dnssec, type: Symbol

        # @return [Symbol, nil] Specifies whether the system uses Global Traffic Manager to manage the response.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
        attribute :enable_gtm
        validates :enable_gtm, type: Symbol

        # @return [Symbol, nil] Specifies whether to process client-side DNS packets with Recursion Desired set in the header.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.,If set to C(no), processing of the packet is subject to the unhandled-query-action option.
        attribute :process_recursion_desired
        validates :process_recursion_desired, type: Symbol

        # @return [Symbol, nil] Specifies whether the system forwards non-wide IP queries to the local BIND server on the BIG-IP system.,For best performance, disable this setting when using a DNS cache.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
        attribute :use_local_bind
        validates :use_local_bind, type: Symbol

        # @return [Symbol, nil] Specifies whether DNS firewall capability is enabled.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
        attribute :enable_dns_firewall
        validates :enable_dns_firewall, type: Symbol

        # @return [Symbol, nil] Specifies whether the system caches DNS responses.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.,When C(yes), the BIG-IP system caches DNS responses handled by the virtual servers associated with this profile. When you enable this setting, you must also specify a value for C(cache_name).,When C(no), the BIG-IP system does not cache DNS responses handled by the virtual servers associated with this profile. However, the profile retains the association with the DNS cache in the C(cache_name) parameter. Disable this setting when you want to debug the system.
        attribute :enable_cache
        validates :enable_cache, type: Symbol

        # @return [Object, nil] Specifies the user-created cache that the system uses to cache DNS responses.,When you select a cache for the system to use, you must also set C(enable_dns_cache) to C(yes)
        attribute :cache_name

        # @return [:allow, :drop, :reject, :hint, :"no-error", nil] Specifies the action to take when a query does not match a Wide IP or a DNS Express Zone.,When C(allow), the BIG-IP system forwards queries to a DNS server or pool member. If a pool is not associated with a listener and the Use BIND Server on BIG-IP setting is set to Enabled, requests are forwarded to the local BIND server.,When C(drop), the BIG-IP system does not respond to the query.,When C(reject), the BIG-IP system returns the query with the REFUSED return code.,When C(hint), the BIG-IP system returns the query with a list of root name servers.,When C(no-error), the BIG-IP system returns the query with the NOERROR return code.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
        attribute :unhandled_query_action
        validates :unhandled_query_action, expression_inclusion: {:in=>[:allow, :drop, :reject, :hint, :"no-error"], :message=>"%{value} needs to be :allow, :drop, :reject, :hint, :\"no-error\""}, allow_nil: true

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the profile exists.,When C(absent), ensures the profile is removed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
