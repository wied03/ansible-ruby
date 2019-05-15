# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages AAA server global configuration
      class Nxos_aaa_server < Base
        # @return [:radius, :tacacs] The server type is either radius or tacacs.
        attribute :server_type
        validates :server_type, presence: true, inclusion: {:in=>[:radius, :tacacs], :message=>"%{value} needs to be :radius, :tacacs"}

        # @return [String, nil] Global AAA shared secret or keyword 'default'.
        attribute :global_key
        validates :global_key, type: String

        # @return [0, 7, nil] The state of encryption applied to the entered global key. O clear text, 7 encrypted. Type-6 encryption is not supported.
        attribute :encrypt_type
        validates :encrypt_type, inclusion: {:in=>[0, 7], :message=>"%{value} needs to be 0, 7"}, allow_nil: true

        # @return [Integer, nil] Duration for which a non-reachable AAA server is skipped, in minutes or keyword 'default. Range is 1-1440. Device default is 0.
        attribute :deadtime
        validates :deadtime, type: Integer

        # @return [Integer, nil] Global AAA server timeout period, in seconds or keyword 'default. Range is 1-60. Device default is 5.
        attribute :server_timeout
        validates :server_timeout, type: Integer

        # @return [:enabled, :disabled, nil] Enables direct authentication requests to AAA server or keyword 'default' Device default is disabled.
        attribute :directed_request
        validates :directed_request, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:present, :default, nil] Manage the state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :default], :message=>"%{value} needs to be :present, :default"}, allow_nil: true
      end
    end
  end
end
