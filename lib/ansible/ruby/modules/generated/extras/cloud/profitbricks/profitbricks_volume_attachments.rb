# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Profitbricks_volume_attachments < Base
        # @return [String] The datacenter in which to operate.
        attribute :datacenter
        validates :datacenter, presence: true, type: String

        # @return [String] The name of the server you wish to detach or attach the volume.
        attribute :server
        validates :server, presence: true, type: String

        # @return [String] The volume name or ID.
        attribute :volume
        validates :volume, presence: true, type: String

        # @return [Object] The ProfitBricks username. Overrides the PB_SUBSCRIPTION_ID environement variable.
        attribute :subscription_user

        # @return [Object] THe ProfitBricks password. Overrides the PB_PASSWORD environement variable.
        attribute :subscription_password

        # @return [:yes, :no, nil] wait for the operation to complete before returning
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Fixnum] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Fixnum

        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
