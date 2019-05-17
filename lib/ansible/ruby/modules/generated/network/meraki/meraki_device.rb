# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Visibility into devices associated to a Meraki environment.
      class Meraki_device < Base
        # @return [:absent, :present, :query, nil] Query an organization.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true

        # @return [String, nil] Name of organization.,If C(clone) is specified, C(org_name) is the name of the new organization.
        attribute :org_name
        validates :org_name, type: String

        # @return [Object, nil] ID of organization.
        attribute :org_id

        # @return [String, nil] Name of a network.
        attribute :net_name
        validates :net_name, type: String

        # @return [Object, nil] ID of a network.
        attribute :net_id

        # @return [String, nil] Serial number of a device to query.
        attribute :serial
        validates :serial, type: String

        # @return [String, nil] Hostname of network device to search for.
        attribute :hostname
        validates :hostname, type: String

        # @return [String, nil] Model of network device to search for.
        attribute :model
        validates :model, type: String

        # @return [String, nil] Space delimited list of tags to assign to device.
        attribute :tags
        validates :tags, type: String

        # @return [Float, nil] Latitude of device's geographic location.,Use negative number for southern hemisphere.
        attribute :lat
        validates :lat, type: Float

        # @return [Float, nil] Longitude of device's geographic location.,Use negative number for western hemisphere.
        attribute :lng
        validates :lng, type: Float

        # @return [Array<String>, String, nil] Postal address of device's location.
        attribute :address
        validates :address, type: TypeGeneric.new(String)

        # @return [Symbol, nil] Whether or not to set the latitude and longitude of a device based on the new address.,Only applies when C(lat) and C(lng) are not specified.
        attribute :move_map_marker
        validates :move_map_marker, type: Symbol

        # @return [String, nil] Serial number of device to query LLDP/CDP information from.
        attribute :serial_lldp_cdp
        validates :serial_lldp_cdp, type: String

        # @return [Object, nil] Timespan, in seconds, used to query LLDP and CDP information.,Must be less than 1 month.
        attribute :lldp_cdp_timespan

        # @return [String, nil] Serial number of device to query uplink information from.
        attribute :serial_uplink
        validates :serial_uplink, type: String
      end
    end
  end
end
