# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module will allow user to pass and execute any supported OP command on the PANW device.
      class Panos_op < Base
        # @return [String] IP address (or hostname) of PAN-OS device or Panorama management console being configured.
        attribute :ip_address
        validates :ip_address, presence: true, type: String

        # @return [String, nil] Username credentials to use for authentication.
        attribute :username
        validates :username, type: String

        # @return [String] Password credentials to use for authentication.
        attribute :password
        validates :password, presence: true, type: String

        # @return [Object, nil] API key that can be used instead of I(username)/I(password) credentials.
        attribute :api_key

        # @return [String] The OP command to be performed.
        attribute :cmd
        validates :cmd, presence: true, type: String
      end
    end
  end
end
