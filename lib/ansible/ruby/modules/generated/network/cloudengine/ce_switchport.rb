# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages Layer 2 switchport interfaces on HUAWEI CloudEngine switches.
      class Ce_switchport < Base
        # @return [Object] Full name of the interface, i.e. 40GE1/0/22.
        attribute :interface
        validates :interface, presence: true

        # @return [:access, :trunk, nil] The link type of an interface.
        attribute :mode
        validates :mode, expression_inclusion: {:in=>[:access, :trunk], :message=>"%{value} needs to be :access, :trunk"}, allow_nil: true

        # @return [Object, nil] If C(mode=access), used as the access VLAN ID, in the range from 1 to 4094.
        attribute :access_vlan

        # @return [Object, nil] If C(mode=trunk), used as the trunk native VLAN ID, in the range from 1 to 4094.
        attribute :native_vlan

        # @return [Object, nil] If C(mode=trunk), used as the VLAN range to ADD or REMOVE from the trunk, such as 2-10 or 2,5,10-15, etc.
        attribute :trunk_vlans

        # @return [:present, :absent, :unconfigured, nil] Manage the state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :unconfigured], :message=>"%{value} needs to be :present, :absent, :unconfigured"}, allow_nil: true
      end
    end
  end
end
