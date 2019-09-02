# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configures NTP server on Cisco UCS Manager.
      # Examples can be used with the L(UCS Platform Emulator,https://communities.cisco.com/ucspe).
      class Ucs_ntp_server < Base
        # @return [:absent, :present, nil] If C(absent), will remove an NTP server.,If C(present), will add or update an NTP server.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] NTP server IP address or hostname.,Enter up to 63 characters that form a valid hostname.,Enter a valid IPV4 Address.
        attribute :ntp_server
        validates :ntp_server, type: String

        # @return [String, nil] A user-defined description of the NTP server.,Enter up to 256 characters.,You can use any characters or spaces except the following:,` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).
        attribute :description
        validates :description, type: String
      end
    end
  end
end
