# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configure management settings of device
      class Panos_mgtconfig < Base
        # @return [String, nil] address of primary DNS server
        attribute :dns_server_primary
        validates :dns_server_primary, type: String

        # @return [String, nil] address of secondary DNS server
        attribute :dns_server_secondary
        validates :dns_server_secondary, type: String

        # @return [String, nil] address of primary Panorama server
        attribute :panorama_primary
        validates :panorama_primary, type: String

        # @return [String, nil] address of secondary Panorama server
        attribute :panorama_secondary
        validates :panorama_secondary, type: String

        # @return [String, nil] commit if changed
        attribute :commit
        validates :commit, type: String
      end
    end
  end
end
