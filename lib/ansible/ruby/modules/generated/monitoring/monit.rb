# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage the state of a program monitored via I(Monit)
      class Monit < Base
        # @return [String] The name of the I(monit) program/process to manage
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :started, :stopped, :restarted, :monitored, :unmonitored, :reloaded] The state of service
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :started, :stopped, :restarted, :monitored, :unmonitored, :reloaded], :message=>"%{value} needs to be :present, :started, :stopped, :restarted, :monitored, :unmonitored, :reloaded"}

        # @return [Integer, nil] If there are pending actions for the service monitored by monit, then Ansible will check for up to this many seconds to verify the requested action has been performed. Ansible will sleep for five seconds between each check.
        attribute :timeout
        validates :timeout, type: Integer
      end
    end
  end
end
