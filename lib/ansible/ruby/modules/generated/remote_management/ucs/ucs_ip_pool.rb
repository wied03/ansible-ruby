# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configures IP address pools and blocks of IP addresses on Cisco UCS Manager.
      # Examples can be used with the UCS Platform Emulator U(https://communities.cisco.com/ucspe).
      class Ucs_ip_pool < Base
        # @return [:present, :absent, nil] If C(present), will verify IP pool is present and will create if needed.,If C(absent), will verify IP pool is absent and will delete if needed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name of the IP address pool.,This name can be between 1 and 32 alphanumeric characters.,You cannot use spaces or any special characters other than - (hyphen), "_" (underscore), : (colon), and . (period).,You cannot change this name after the IP address pool is created.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] The user-defined description of the IP address pool.,Enter up to 256 characters.,You can use any characters or spaces except the following:,` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).
        attribute :descrption

        # @return [:default, :sequential, nil] The Assignment Order field.,This can be one of the following:,default - Cisco UCS Manager selects a random identity from the pool.,sequential - Cisco UCS Manager selects the lowest available identity from the pool.
        attribute :order
        validates :order, expression_inclusion: {:in=>[:default, :sequential], :message=>"%{value} needs to be :default, :sequential"}, allow_nil: true

        # @return [String, nil] The first IPv4 address in the IPv4 addresses block.,This is the From field in the UCS Manager Add IPv4 Blocks menu.
        attribute :first_addr
        validates :first_addr, type: String

        # @return [String, nil] The last IPv4 address in the IPv4 addresses block.,This is the To field in the UCS Manager Add IPv4 Blocks menu.
        attribute :last_addr
        validates :last_addr, type: String

        # @return [String, nil] The subnet mask associated with the IPv4 addresses in the block.
        attribute :subnet_mask
        validates :subnet_mask, type: String

        # @return [String, nil] The default gateway associated with the IPv4 addresses in the block.
        attribute :default_gw
        validates :default_gw, type: String

        # @return [String, nil] The primary DNS server that this block of IPv4 addresses should access.
        attribute :primary_dns
        validates :primary_dns, type: String

        # @return [String, nil] The secondary DNS server that this block of IPv4 addresses should access.
        attribute :secondary_dns
        validates :secondary_dns, type: String

        # @return [String, nil] The first IPv6 address in the IPv6 addresses block.,This is the From field in the UCS Manager Add IPv6 Blocks menu.
        attribute :ipv6_first_addr
        validates :ipv6_first_addr, type: String

        # @return [String, nil] The last IPv6 address in the IPv6 addresses block.,This is the To field in the UCS Manager Add IPv6 Blocks menu.
        attribute :ipv6_last_addr
        validates :ipv6_last_addr, type: String

        # @return [String, nil] The network address prefix associated with the IPv6 addresses in the block.
        attribute :ipv6_prefix
        validates :ipv6_prefix, type: String

        # @return [String, nil] The default gateway associated with the IPv6 addresses in the block.
        attribute :ipv6_default_gw
        validates :ipv6_default_gw, type: String

        # @return [String, nil] The primary DNS server that this block of IPv6 addresses should access.
        attribute :ipv6_primary_dns
        validates :ipv6_primary_dns, type: String

        # @return [String, nil] The secondary DNS server that this block of IPv6 addresses should access.
        attribute :ipv6_secondary_dns
        validates :ipv6_secondary_dns, type: String

        # @return [String, nil] Org dn (distinguished name)
        attribute :org_dn
        validates :org_dn, type: String
      end
    end
  end
end
