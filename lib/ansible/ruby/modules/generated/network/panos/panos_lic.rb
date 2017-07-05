# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Apply an authcode to a device.
      # The authcode should have been previously registered on the Palo Alto Networks support portal.
      # The device should have Internet access.
      class Panos_lic < Base
        # @return [Object] IP address (or hostname) of PAN-OS device
        attribute :ip_address
        validates :ip_address, presence: true

        # @return [Object] password for authentication
        attribute :password
        validates :password, presence: true

        # @return [String, nil] username for authentication
        attribute :username
        validates :username, type: String

        # @return [Object] authcode to be applied
        attribute :auth_code
        validates :auth_code, presence: true

        # @return [String, nil] whether to apply authcode even if device is already licensed
        attribute :force
        validates :force, type: String
      end
    end
  end
end
