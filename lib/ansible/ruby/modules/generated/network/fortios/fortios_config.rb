# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides management of FortiOS Devices configuration.
      class Fortios_config < Base
        # @return [String, nil] The I(src) argument provides a path to the configuration file to load into the remote device.
        attribute :src
        validates :src, type: String

        # @return [String, nil] Only for partial backup, you can restrict by giving expected configuration path (ex. firewall address).
        attribute :filter
        validates :filter, type: String
      end
    end
  end
end
