# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Import file on PAN-OS device
      class Panos_import < Base
        # @return [String] IP address (or hostname) of PAN-OS device.
        attribute :ip_address
        validates :ip_address, presence: true, type: String

        # @return [String] Password for device authentication.
        attribute :password
        validates :password, presence: true, type: String

        # @return [String, nil] Username for device authentication.
        attribute :username
        validates :username, type: String

        # @return [String, nil] Category of file uploaded. The default is software.
        attribute :category
        validates :category, type: String

        # @return [String, nil] Location of the file to import into device.
        attribute :file
        validates :file, type: String

        # @return [Object, nil] URL of the file that will be imported to device.
        attribute :url
      end
    end
  end
end
