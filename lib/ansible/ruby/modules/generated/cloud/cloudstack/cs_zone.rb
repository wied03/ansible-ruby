# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and remove zones.
      class Cs_zone < Base
        # @return [String] Name of the zone.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] uuid of the existing zone.
        attribute :id

        # @return [:present, :enabled, :disabled, :absent, nil] State of the zone.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :enabled, :disabled, :absent], :message=>"%{value} needs to be :present, :enabled, :disabled, :absent"}, allow_nil: true

        # @return [Object, nil] Domain the zone is related to.,Zone is a public zone if not set.
        attribute :domain

        # @return [Object, nil] Network domain for the zone.
        attribute :network_domain

        # @return [:basic, :advanced, nil] Network type of the zone.
        attribute :network_type
        validates :network_type, inclusion: {:in=>[:basic, :advanced], :message=>"%{value} needs to be :basic, :advanced"}, allow_nil: true

        # @return [String, nil] First DNS for the zone.,Required if C(state=present)
        attribute :dns1
        validates :dns1, type: String

        # @return [String, nil] Second DNS for the zone.
        attribute :dns2
        validates :dns2, type: String

        # @return [Object, nil] First internal DNS for the zone.,If not set C(dns1) will be used on C(state=present).
        attribute :internal_dns1

        # @return [Object, nil] Second internal DNS for the zone.
        attribute :internal_dns2

        # @return [Object, nil] First DNS for IPv6 for the zone.
        attribute :dns1_ipv6

        # @return [Object, nil] Second DNS for IPv6 for the zone.
        attribute :dns2_ipv6

        # @return [Object, nil] Guest CIDR address for the zone.
        attribute :guest_cidr_address

        # @return [Object, nil] DHCP provider for the Zone.
        attribute :dhcp_provider
      end
    end
  end
end
