# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create/delete static/dynamic IP addresses on network interfaces on Solaris/illumos systems.
      # Up/down static/dynamic IP addresses on network interfaces on Solaris/illumos systems.
      # Manage IPv6 link-local addresses on network interfaces on Solaris/illumos systems.
      class Ipadm_addr < Base
        # @return [Object, nil] Specifiies an IP address to configure in CIDR notation.
        attribute :address

        # @return [:static, :dhcp, :addrconf, nil] Specifiies a type of IP address to configure.
        attribute :addrtype
        validates :addrtype, inclusion: {:in=>[:static, :dhcp, :addrconf], :message=>"%{value} needs to be :static, :dhcp, :addrconf"}, allow_nil: true

        # @return [Object] Specifies an unique IP address on the system.
        attribute :addrobj
        validates :addrobj, presence: true

        # @return [Boolean, nil] Specifies that the configured IP address is temporary. Temporary IP addresses do not persist across reboots.
        attribute :temporary
        validates :temporary, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] Specifies the time in seconds we wait for obtaining address via DHCP.
        attribute :wait
        validates :wait, type: Integer

        # @return [:absent, :present, :up, :down, :enabled, :disabled, :refreshed, nil] Create/delete/enable/disable an IP address on the network interface.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :up, :down, :enabled, :disabled, :refreshed], :message=>"%{value} needs to be :absent, :present, :up, :down, :enabled, :disabled, :refreshed"}, allow_nil: true
      end
    end
  end
end
