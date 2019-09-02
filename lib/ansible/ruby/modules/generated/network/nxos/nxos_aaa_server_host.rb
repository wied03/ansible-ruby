# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages AAA server host-specific configuration.
      class Nxos_aaa_server_host < Base
        # @return [:radius, :tacacs] The server type is either radius or tacacs.
        attribute :server_type
        validates :server_type, presence: true, expression_inclusion: {:in=>[:radius, :tacacs], :message=>"%{value} needs to be :radius, :tacacs"}

        # @return [String] Address or name of the radius or tacacs host.
        attribute :address
        validates :address, presence: true, type: String

        # @return [String, nil] Shared secret for the specified host or keyword 'default'.
        attribute :key
        validates :key, type: String

        # @return [0, 7, nil] The state of encryption applied to the entered key. O for clear text, 7 for encrypted. Type-6 encryption is not supported.
        attribute :encrypt_type
        validates :encrypt_type, expression_inclusion: {:in=>[0, 7], :message=>"%{value} needs to be 0, 7"}, allow_nil: true

        # @return [Integer, nil] Timeout period for specified host, in seconds or keyword 'default. Range is 1-60.
        attribute :host_timeout
        validates :host_timeout, type: Integer

        # @return [Object, nil] Alternate UDP port for RADIUS authentication or keyword 'default'.
        attribute :auth_port

        # @return [Integer, nil] Alternate UDP port for RADIUS accounting or keyword 'default'.
        attribute :acct_port
        validates :acct_port, type: Integer

        # @return [Integer, nil] Alternate TCP port TACACS Server or keyword 'default'.
        attribute :tacacs_port
        validates :tacacs_port, type: Integer

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
