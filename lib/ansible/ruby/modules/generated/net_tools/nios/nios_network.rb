# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Adds and/or removes instances of network objects from Infoblox NIOS servers.  This module manages NIOS C(network) objects using the Infoblox WAPI interface over REST.
      # Supports both IPV4 and IPV6 internet protocols
      class Nios_network < Base
        # @return [String] Specifies the network to add or remove from the system.  The value should use CIDR notation.
        attribute :network
        validates :network, presence: true, type: String

        # @return [String] Configures the name of the network view to associate with this configured instance.
        attribute :network_view
        validates :network_view, presence: true, type: String

        # @return [Array<Hash>, Hash, nil] Configures the set of DHCP options to be included as part of the configured network instance.  This argument accepts a list of values (see suboptions).  When configuring suboptions at least one of C(name) or C(num) must be specified.
        attribute :options
        validates :options, type: TypeGeneric.new(Hash)

        # @return [Object, nil] Allows for the configuration of Extensible Attributes on the instance of the object.  This argument accepts a set of key / value pairs for configuration.
        attribute :extattrs

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
