# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management of logging on Arista Eos devices.
      class Eos_logging < Base
        # @return [:on, :host, :"console'", :monitor, :buffered, nil] Destination of the logs.
        attribute :dest
        validates :dest, expression_inclusion: {:in=>[:on, :host, :"console'", :monitor, :buffered], :message=>"%{value} needs to be :on, :host, :\"console'\", :monitor, :buffered"}, allow_nil: true

        # @return [String, nil] If value of C(dest) is I(host) C(name) should be specified, which indicates hostname or IP address.
        attribute :name
        validates :name, type: String

        # @return [Integer, nil] Size of buffer. The acceptable value is in range from 10 to 2147483647 bytes.
        attribute :size
        validates :size, type: Integer

        # @return [String, nil] Set logging facility.
        attribute :facility
        validates :facility, type: String

        # @return [:emergencies, :alerts, :critical, :errors, :warnings, :notifications, :informational, :debugging, nil] Set logging severity levels.
        attribute :level
        validates :level, expression_inclusion: {:in=>[:emergencies, :alerts, :critical, :errors, :warnings, :notifications, :informational, :debugging], :message=>"%{value} needs to be :emergencies, :alerts, :critical, :errors, :warnings, :notifications, :informational, :debugging"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] List of logging definitions.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, nil] State of the logging configuration.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
