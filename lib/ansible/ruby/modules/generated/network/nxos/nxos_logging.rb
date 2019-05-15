# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of logging on Cisco NX-OS devices.
      class Nxos_logging < Base
        # @return [:console, :logfile, :module, :monitor, :server, nil] Destination of the logs.
        attribute :dest
        validates :dest, inclusion: {:in=>[:console, :logfile, :module, :monitor, :server], :message=>"%{value} needs to be :console, :logfile, :module, :monitor, :server"}, allow_nil: true

        # @return [String, nil] Hostname or IP Address for remote logging (when dest is 'server').
        attribute :remote_server
        validates :remote_server, type: String

        # @return [String, nil] VRF to be used while configuring remote logging (when dest is 'server').
        attribute :use_vrf
        validates :use_vrf, type: String

        # @return [String, nil] Interface to be used while configuring source-interface for logging (e.g., 'Ethernet1/2', 'mgmt0')
        attribute :interface
        validates :interface, type: String

        # @return [String, nil] If value of C(dest) is I(logfile) it indicates file-name.
        attribute :name
        validates :name, type: String

        # @return [String, nil] Facility name for logging.
        attribute :facility
        validates :facility, type: String

        # @return [Integer, nil] Set logging severity levels.
        attribute :dest_level
        validates :dest_level, type: Integer

        # @return [Integer, nil] Set logging serverity levels for facility based log messages.
        attribute :facility_level
        validates :facility_level, type: Integer

        # @return [Array<Hash>, Hash, nil] List of logging definitions.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, nil] State of the logging configuration.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
