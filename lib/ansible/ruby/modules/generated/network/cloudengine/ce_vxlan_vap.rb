# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages VXLAN Virtual access point on HUAWEI CloudEngine Devices.
      class Ce_vxlan_vap < Base
        # @return [Object, nil] Specifies a bridge domain ID. The value is an integer ranging from 1 to 16777215.
        attribute :bridge_domain_id

        # @return [Object, nil] Specifies the VLAN binding to a BD(Bridge Domain). The value is an integer ranging ranging from 1 to 4094.
        attribute :bind_vlan_id

        # @return [Object, nil] Specifies an Sub-Interface full name, i.e. "10GE1/0/41.1". The value is a string of 1 to 63 case-insensitive characters, spaces supported.
        attribute :l2_sub_interface

        # @return [:dot1q, :default, :untag, :qinq, :none, nil] Specifies an encapsulation type of packets allowed to pass through a Layer 2 sub-interface.
        attribute :encapsulation
        validates :encapsulation, inclusion: {:in=>[:dot1q, :default, :untag, :qinq, :none], :message=>"%{value} needs to be :dot1q, :default, :untag, :qinq, :none"}, allow_nil: true

        # @return [Object, nil] When I(encapsulation) is 'dot1q', specifies a VLAN ID in the outer VLAN tag. When I(encapsulation) is 'qinq', specifies an outer VLAN ID for double-tagged packets to be received by a Layer 2 sub-interface. The value is an integer ranging from 1 to 4094.
        attribute :ce_vid

        # @return [Object, nil] When I(encapsulation) is 'qinq', specifies an inner VLAN ID for double-tagged packets to be received by a Layer 2 sub-interface. The value is an integer ranging from 1 to 4094.
        attribute :pe_vid

        # @return [:present, :absent, nil] Determines whether the config should be present or not on the device.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
