# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows you to create or restore a volume snapshot. This module has a dependency on profitbricks >= 1.0.0
      class Profitbricks_nic < Base
        # @return [String] The datacenter in which to operate.
        attribute :datacenter
        validates :datacenter, presence: true, type: String

        # @return [String] The server name or ID.
        attribute :server
        validates :server, presence: true, type: String

        # @return [String] The name or ID of the NIC. This is only required on deletes, but not on create.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer] The LAN to place the NIC on. You can pass a LAN that doesn't exist and it will be created. Required on create.
        attribute :lan
        validates :lan, presence: true, type: Integer

        # @return [Object, nil] The ProfitBricks username. Overrides the PB_SUBSCRIPTION_ID environment variable.
        attribute :subscription_user

        # @return [Object, nil] THe ProfitBricks password. Overrides the PB_PASSWORD environment variable.
        attribute :subscription_password

        # @return [String, nil] wait for the operation to complete before returning
        attribute :wait
        validates :wait, type: String

        # @return [Integer, nil] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
