# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages UDLD interface configuration params.
      class Nxos_udld_interface < Base
        # @return [:enabled, :disabled, :aggressive] Manages UDLD mode for an interface.
        attribute :mode
        validates :mode, presence: true, inclusion: {:in=>[:enabled, :disabled, :aggressive], :message=>"%{value} needs to be :enabled, :disabled, :aggressive"}

        # @return [String] FULL name of the interface, i.e. Ethernet1/1-
        attribute :interface
        validates :interface, presence: true, type: String

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
