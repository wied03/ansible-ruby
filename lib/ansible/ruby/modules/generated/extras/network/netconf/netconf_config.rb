# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Netconf is a network management protocol developed and standardized by the IETF. It is documented in RFC 6241.
      # This module allows the user to send a configuration XML file to a netconf device, and detects if there was a configuration change.
      class Netconf_config < Base
        # @return [String] the hostname or ip address of the netconf device
        attribute :host
        validates :host, presence: true, type: String

        # @return [Integer, nil] the netconf port
        attribute :port
        validates :port, type: Integer

        # @return [Boolean, nil] if true, the ssh host key of the device must match a ssh key present on the host,if false, the ssh host key of the device is not checked
        attribute :hostkey_verify
        validates :hostkey_verify, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] the username to authenticate with
        attribute :username
        validates :username, presence: true, type: String

        # @return [String] password of the user to authenticate with
        attribute :password
        validates :password, presence: true, type: String

        # @return [String] the XML content to send to the device
        attribute :xml
        validates :xml, presence: true, type: String
      end
    end
  end
end
