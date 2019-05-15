# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configure data-port (DP) network interface for DHCP. By default DP interfaces are static.
      class Panos_interface < Base
        # @return [String] Name of the interface to configure.
        attribute :if_name
        validates :if_name, presence: true, type: String

        # @return [String] Name of the zone for the interface. If the zone does not exist it is created but if the zone exists and it is not of the layer3 type the operation will fail.\r\n
        attribute :zone_name
        validates :zone_name, presence: true, type: String

        # @return [String, nil] Whether or not to add default route with router learned via DHCP.
        attribute :create_default_route
        validates :create_default_route, type: String

        # @return [Boolean, nil] Commit if changed
        attribute :commit
        validates :commit, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
