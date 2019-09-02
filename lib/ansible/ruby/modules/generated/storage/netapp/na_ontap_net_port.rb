# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Modify a ONTAP network port.
      class Na_ontap_net_port < Base
        # @return [:present, nil] Whether the specified net port should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present], :message=>"%{value} needs to be :present"}, allow_nil: true

        # @return [String] Specifies the name of node.
        attribute :node
        validates :node, presence: true, type: String

        # @return [String] Specifies the name of port.
        attribute :port
        validates :port, presence: true, type: String

        # @return [Object, nil] Specifies the maximum transmission unit (MTU) reported by the port.
        attribute :mtu

        # @return [String, nil] Enables or disables Ethernet auto-negotiation of speed, duplex and flow control.
        attribute :autonegotiate_admin
        validates :autonegotiate_admin, type: String

        # @return [Object, nil] Specifies the user preferred duplex setting of the port.,Valid values auto, half, full
        attribute :duplex_admin

        # @return [Object, nil] Specifies the user preferred speed setting of the port.
        attribute :speed_admin

        # @return [Object, nil] Specifies the user preferred flow control setting of the port.
        attribute :flowcontrol_admin

        # @return [Object, nil] Specifies the port's associated IPspace name.,The 'Cluster' ipspace is reserved for cluster ports.
        attribute :ipspace
      end
    end
  end
end
