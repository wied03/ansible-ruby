# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages F5 BIG-IP LTM pool members via iControl SOAP API
      class Bigip_pool_member < Base
        # @return [:present, :absent] Pool member state
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [:enabled, :disabled, nil] Set new session availability status for pool member
        attribute :session_state
        validates :session_state, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:enabled, :disabled, nil] Set monitor availability status for pool member
        attribute :monitor_state
        validates :monitor_state, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [String] Pool name. This pool must exist.
        attribute :pool
        validates :pool, presence: true, type: String

        # @return [String, nil] Partition
        attribute :partition
        validates :partition, type: String

        # @return [String] Pool member IP
        attribute :host
        validates :host, presence: true, type: String

        # @return [Integer] Pool member port
        attribute :port
        validates :port, presence: true, type: Integer

        # @return [Integer, nil] Pool member connection limit. Setting this to 0 disables the limit.
        attribute :connection_limit
        validates :connection_limit, type: Integer

        # @return [String, nil] Pool member description
        attribute :description
        validates :description, type: String

        # @return [Integer, nil] Pool member rate limit (connections-per-second). Setting this to 0 disables the limit.
        attribute :rate_limit
        validates :rate_limit, type: Integer

        # @return [Integer, nil] Pool member ratio weight. Valid values range from 1 through 100. New pool members -- unless overridden with this value -- default to 1.
        attribute :ratio
        validates :ratio, type: Integer

        # @return [Boolean, nil] When state is absent and the pool member is no longer referenced in other pools, the default behavior removes the unused node o bject. Setting this to 'yes' disables this behavior.
        attribute :preserve_node
        validates :preserve_node, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
