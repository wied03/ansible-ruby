# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage NTP servers on a BIG-IP.
      class Bigip_device_ntp < Base
        # @return [Array<String>, String, nil] A list of NTP servers to set on the device. At least one of C(ntp_servers) or C(timezone) is required.
        attribute :ntp_servers
        validates :ntp_servers, type: TypeGeneric.new(String)

        # @return [:absent, :present, nil] The state of the NTP servers on the system. When C(present), guarantees that the NTP servers are set on the system. When C(absent), removes the specified NTP servers from the device configuration.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] The timezone to set for NTP lookups. At least one of C(ntp_servers) or C(timezone) is required.
        attribute :timezone
        validates :timezone, type: String
      end
    end
  end
end
