# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides declarative management configuration of system logging (syslog) on Cisco IOS XR devices.
      class Iosxr_logging < Base
        # @return [:host, :console, :monitor, :buffered, :file, nil] Destination for system logging (syslog) messages.
        attribute :dest
        validates :dest, inclusion: {:in=>[:host, :console, :monitor, :buffered, :file], :message=>"%{value} needs to be :host, :console, :monitor, :buffered, :file"}, allow_nil: true

        # @return [String, nil] When C(dest) = I(file) name indicates file-name,When C(dest) = I(host) name indicates the host-name or ip-address of syslog server.
        attribute :name
        validates :name, type: String

        # @return [String, nil] vrf name when syslog server is configured, C(dest) = C(host)
        attribute :vrf
        validates :vrf, type: String

        # @return [Integer, nil] Size of buffer when C(dest) = C(buffered). The acceptable value is in the range I(307200 to 125000000 bytes). Default 307200,Size of file when C(dest) = C(file). The acceptable value is in the range I(1 to 2097152)KB. Default 2 GB
        attribute :size
        validates :size, type: Integer

        # @return [String, nil] To configure the type of syslog facility in which system logging (syslog) messages are sent to syslog servers Optional config for C(dest) = C(host)
        attribute :facility
        validates :facility, type: String

        # @return [String, nil] To append a hostname prefix to system logging (syslog) messages logged to syslog servers. Optional config for C(dest) = C(host)
        attribute :hostnameprefix
        validates :hostnameprefix, type: String

        # @return [String, nil] Specifies the severity level for the logging.
        attribute :level
        validates :level, type: String

        # @return [Array<Hash>, Hash, nil] List of syslog logging configuration definitions.
        attribute :aggregate
        validates :aggregate, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, nil] Existential state of the logging configuration on the node.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
