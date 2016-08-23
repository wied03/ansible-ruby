# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
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

        # @return [Fixnum] The LAN to place the NIC on. You can pass a LAN that doesn't exist and it will be created. Required on create.
        attribute :lan
        validates :lan, presence: true, type: Fixnum

        # @return [Object] The ProfitBricks username. Overrides the PB_SUBSCRIPTION_ID environement variable.
        attribute :subscription_user

        # @return [Object] THe ProfitBricks password. Overrides the PB_PASSWORD environement variable.
        attribute :subscription_password

        # @return [String] wait for the operation to complete before returning
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Fixnum] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Fixnum

        # @return [String] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end