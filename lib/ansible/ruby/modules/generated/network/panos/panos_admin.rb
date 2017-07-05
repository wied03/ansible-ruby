# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # PanOS module that allows changes to the user account passwords by doing API calls to the Firewall using pan-api as the protocol.
      class Panos_admin < Base
        # @return [String] IP address (or hostname) of PAN-OS device
        attribute :ip_address
        validates :ip_address, presence: true, type: String

        # @return [String] password for authentication
        attribute :password
        validates :password, presence: true, type: String

        # @return [String, nil] username for authentication
        attribute :username
        validates :username, type: String

        # @return [String, nil] username for admin user
        attribute :admin_username
        validates :admin_username, type: String

        # @return [String] password for admin user
        attribute :admin_password
        validates :admin_password, presence: true, type: String

        # @return [Object, nil] role for admin user
        attribute :role

        # @return [Boolean, nil] commit if changed
        attribute :commit
        validates :commit, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
