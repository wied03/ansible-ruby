# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages MTU settings on Nexus switch.
      class Nxos_mtu < Base
        # @return [String, nil] Full name of interface, i.e. Ethernet1/1.
        attribute :interface
        validates :interface, type: String

        # @return [Integer, nil] MTU for a specific interface.
        attribute :mtu
        validates :mtu, type: Integer

        # @return [Integer, nil] System jumbo MTU.
        attribute :sysmtu
        validates :sysmtu, type: Integer

        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
