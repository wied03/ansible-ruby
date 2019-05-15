# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of logging on network devices.
      class Net_logging < Base
        # @return [:console, :host, nil] Destination of the logs.
        attribute :dest
        validates :dest, inclusion: {:in=>[:console, :host], :message=>"%{value} needs to be :console, :host"}, allow_nil: true

        # @return [String, nil] If value of C(dest) is I(host) it indicates file-name the host name to be notified.
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

        # @return [Boolean, nil] Purge logging not defined in the I(aggregate) parameter.
        attribute :purge
        validates :purge, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] State of the logging configuration.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
