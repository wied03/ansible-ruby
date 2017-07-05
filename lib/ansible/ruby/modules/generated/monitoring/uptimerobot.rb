# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module will let you start and pause Uptime Robot Monitoring
      class Uptimerobot < Base
        # @return [:started, :paused] Define whether or not the monitor should be running or paused.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:started, :paused], :message=>"%{value} needs to be :started, :paused"}

        # @return [Integer] ID of the monitor to check.
        attribute :monitorid
        validates :monitorid, presence: true, type: Integer

        # @return [String] Uptime Robot API key.
        attribute :apikey
        validates :apikey, presence: true, type: String
      end
    end
  end
end
