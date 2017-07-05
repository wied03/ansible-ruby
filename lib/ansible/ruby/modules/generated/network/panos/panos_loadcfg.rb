# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Load configuration on PAN-OS device
      class Panos_loadcfg < Base
        # @return [String] IP address (or hostname) of PAN-OS device
        attribute :ip_address
        validates :ip_address, presence: true, type: String

        # @return [String] password for authentication
        attribute :password
        validates :password, presence: true, type: String

        # @return [String, nil] username for authentication
        attribute :username
        validates :username, type: String

        # @return [String, nil] configuration file to load
        attribute :file
        validates :file, type: String

        # @return [Boolean, nil] commit if changed
        attribute :commit
        validates :commit, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
