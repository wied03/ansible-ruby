# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Adds and/or removes instances of DNS zone objects from Infoblox NIOS servers.  This module manages NIOS C(zone_auth) objects using the Infoblox WAPI interface over REST.
      class Nios_zone < Base
        # @return [Object] Specifies the qualified domain name to either add or remove from the NIOS instance based on the configured C(state) value.
        attribute :fqdn
        validates :fqdn, presence: true

        # @return [String] Configures the DNS view name for the configured resource.  The specified DNS zone must already exist on the running NIOS instance prior to configuring zones.
        attribute :view
        validates :view, presence: true, type: String

        # @return [Array<Hash>, Hash, nil] Configures the grid primary servers for this zone.
        attribute :grid_primary
        validates :grid_primary, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] Configures the grid secondary servers for this zone.
        attribute :grid_secondaries
        validates :grid_secondaries, type: TypeGeneric.new(Hash)

        # @return [String, nil] Configures the name server group for this zone. Name server group is mutually exclusive with grid primary and grid secondaries.
        attribute :ns_group
        validates :ns_group, type: String

        # @return [Boolean, nil] If set to true, causes the NIOS DNS service to restart and load the new zone configuration
        attribute :restart_if_needed
        validates :restart_if_needed, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Create an authorative Reverse-Mapping Zone which is an area of network space for which one or more name servers-primary and secondary-have the responsibility to respond to address-to-name queries. It supports reverse-mapping zones for both IPv4 and IPv6 addresses.
        attribute :zone_format
        validates :zone_format, type: String

        # @return [Hash, nil] Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.
        attribute :extattrs
        validates :extattrs, type: Hash

        # @return [String, nil] Configures a text string comment to be associated with the instance of this object.  The provided text string will be configured on the object instance.
        attribute :comment
        validates :comment, type: String

        # @return [:present, :absent, nil] Configures the intended state of the instance of the object on the NIOS server.  When this value is set to C(present), the object is configured on the device and when this value is set to C(absent) the value is removed (if necessary) from the device.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
