# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Change the admin password of PAN-OS via SSH using a SSH key for authentication.
      # Useful for AWS instances where the first login should be done via SSH.
      class Panos_admpwd < Base
        # @return [String] IP address (or hostname) of PAN-OS device
        attribute :ip_address
        validates :ip_address, presence: true, type: String

        # @return [String, nil] username for initial authentication
        attribute :username
        validates :username, type: String

        # @return [String] filename of the SSH Key to use for authentication
        attribute :key_filename
        validates :key_filename, presence: true, type: String

        # @return [String] password to configure for admin on the PAN-OS device
        attribute :newpassword
        validates :newpassword, presence: true, type: String
      end
    end
  end
end
