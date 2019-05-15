# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows for creation, management, and visibility into layer 3 firewalls implemented on Meraki MR access points.
      class Meraki_mr_l3_firewall < Base
        # @return [:present, :query, nil] Create or modify an organization.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :query], :message=>"%{value} needs to be :present, :query"}, allow_nil: true

        # @return [String, nil] Name of organization.
        attribute :org_name
        validates :org_name, type: String

        # @return [Object, nil] ID of organization.
        attribute :org_id

        # @return [String, nil] Name of network containing access points.
        attribute :net_name
        validates :net_name, type: String

        # @return [Integer, nil] ID of network containing access points.
        attribute :net_id
        validates :net_id, type: Integer

        # @return [Integer, nil] Number of SSID to apply firewall rule to.
        attribute :number
        validates :number, type: Integer

        # @return [Object, nil] Name of SSID to apply firewall rule to.
        attribute :ssid_name

        # @return [Boolean, nil] Sets whether devices can talk to other devices on the same LAN.
        attribute :allow_lan_access
        validates :allow_lan_access, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [NilClass, Array<Hash>, Hash, nil] List of firewall rules.
        attribute :rules
        validates :rules, type: TypeGeneric.new(Hash)
      end
    end
  end
end
