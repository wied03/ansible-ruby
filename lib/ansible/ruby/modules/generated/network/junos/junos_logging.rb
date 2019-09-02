# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of logging on Juniper JUNOS devices.
      class Junos_logging < Base
        # @return [:console, :host, :file, :user, nil] Destination of the logs.
        attribute :dest
        validates :dest, expression_inclusion: {:in=>[:console, :host, :file, :user], :message=>"%{value} needs to be :console, :host, :file, :user"}, allow_nil: true

        # @return [String, nil] If value of C(dest) is I(file) it indicates file-name, for I(user) it indicates username and for I(host) indicates the host name to be notified.
        attribute :name
        validates :name, type: String

        # @return [String, nil] Set logging facility.
        attribute :facility
        validates :facility, type: String

        # @return [String, nil] Set logging severity levels.
        attribute :level
        validates :level, type: String

        # @return [Array<Hash>, Hash, nil] List of logging definitions.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, nil] State of the logging configuration.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Specifies whether or not the configuration is active or deactivated
        attribute :active
        validates :active, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] Rotate log frequency in minutes, this is applicable if value of I(dest) is C(file). The acceptable value is in range of 1 to 59. This controls the frequency after which log file is rotated.
        attribute :rotate_frequency
        validates :rotate_frequency, type: Integer

        # @return [Integer, nil] Size of the file in archive, this is applicable if value of I(dest) is C(file). The acceptable value is in range from 65536 to 1073741824 bytes.
        attribute :size
        validates :size, type: Integer

        # @return [Integer, nil] Number of files to be archived, this is applicable if value of I(dest) is C(file). The acceptable value is in range from 1 to 1000.
        attribute :files
        validates :files, type: Integer
      end
    end
  end
end
