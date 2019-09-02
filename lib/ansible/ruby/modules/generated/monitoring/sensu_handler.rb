# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages Sensu handler configuration
      # For more information, refer to the Sensu documentation: U(https://sensuapp.org/docs/latest/reference/handlers.html)
      class Sensu_handler < Base
        # @return [:present, :absent, nil] Whether the handler should be present or not
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] A unique name for the handler. The name cannot contain special characters or spaces.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:pipe, :tcp, :udp, :transport, :set] The handler type
        attribute :type
        validates :type, presence: true, expression_inclusion: {:in=>[:pipe, :tcp, :udp, :transport, :set], :message=>"%{value} needs to be :pipe, :tcp, :udp, :transport, :set"}

        # @return [Object, nil] The Sensu event filter (name) to use when filtering events for the handler.
        attribute :filter

        # @return [Object, nil] An array of Sensu event filters (names) to use when filtering events for the handler.,Each array item must be a string.
        attribute :filters

        # @return [:warning, :critical, :unknown, nil] An array of check result severities the handler will handle.,NOTE: event resolution bypasses this filtering.
        attribute :severities
        validates :severities, expression_inclusion: {:in=>[:warning, :critical, :unknown], :message=>"%{value} needs to be :warning, :critical, :unknown"}, allow_nil: true

        # @return [Object, nil] The Sensu event mutator (name) to use to mutate event data for the handler.
        attribute :mutator

        # @return [Integer, nil] The handler execution duration timeout in seconds (hard stop).,Only used by pipe and tcp handler types.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [:yes, :no, nil] If events matching one or more silence entries should be handled.
        attribute :handle_silenced
        validates :handle_silenced, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If events in the flapping state should be handled.
        attribute :handle_flapping
        validates :handle_flapping, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] The handler command to be executed.,The event data is passed to the process via STDIN.,NOTE: the command attribute is only required for Pipe handlers (i.e. handlers configured with "type": "pipe").
        attribute :command
        validates :command, type: String

        # @return [Hash, nil] The socket definition scope, used to configure the TCP/UDP handler socket.,NOTE: the socket attribute is only required for TCP/UDP handlers (i.e. handlers configured with "type": "tcp" or "type": "udp").
        attribute :socket
        validates :socket, type: Hash

        # @return [Object, nil] The pipe definition scope, used to configure the Sensu transport pipe.,NOTE: the pipe attribute is only required for Transport handlers (i.e. handlers configured with "type": "transport").
        attribute :pipe

        # @return [Object, nil] An array of Sensu event handlers (names) to use for events using the handler set.,Each array item must be a string.,NOTE: the handlers attribute is only required for handler sets (i.e. handlers configured with "type": "set").
        attribute :handlers
      end
    end
  end
end
