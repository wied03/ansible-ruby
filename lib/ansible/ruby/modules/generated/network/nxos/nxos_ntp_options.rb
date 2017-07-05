# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages NTP options, e.g. authoritative server and logging.
      class Nxos_ntp_options < Base
        # @return [:true, :false, nil] Sets whether the device is an authoritative NTP server.
        attribute :master
        validates :master, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [Integer, nil] If C(master=true), an optional stratum can be supplied (1-15). The device default is 8.
        attribute :stratum
        validates :stratum, type: Integer

        # @return [:true, :false, nil] Sets whether NTP logging is enabled on the device.
        attribute :logging
        validates :logging, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
