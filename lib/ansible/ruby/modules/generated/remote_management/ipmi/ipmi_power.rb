# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Use this module for power management
      class Ipmi_power < Base
        # @return [String] Hostname or ip address of the BMC.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer, nil] Remote RMCP port.
        attribute :port
        validates :port, type: Integer

        # @return [String] Username to use to connect to the BMC.
        attribute :user
        validates :user, presence: true, type: String

        # @return [String] Password to connect to the BMC.
        attribute :password
        validates :password, presence: true, type: String

        # @return [:"on -- Request system turn on", :"off -- Request system turn off without waiting for OS to shutdown", :"shutdown -- Have system request OS proper shutdown", :"reset -- Request system reset without waiting for OS", :"boot -- If system is off, then 'on', else 'reset'"] Whether to ensure that the machine in desired state.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:"on -- Request system turn on", :"off -- Request system turn off without waiting for OS to shutdown", :"shutdown -- Have system request OS proper shutdown", :"reset -- Request system reset without waiting for OS", :"boot -- If system is off, then 'on', else 'reset'"], :message=>"%{value} needs to be :\"on -- Request system turn on\", :\"off -- Request system turn off without waiting for OS to shutdown\", :\"shutdown -- Have system request OS proper shutdown\", :\"reset -- Request system reset without waiting for OS\", :\"boot -- If system is off, then 'on', else 'reset'\""}

        # @return [Integer, nil] Maximum number of seconds before interrupt request.
        attribute :timeout
        validates :timeout, type: Integer
      end
    end
  end
end
