# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages interface specific VPN configuration of HUAWEI CloudEngine switches.
      class Ce_vrf_interface < Base
        # @return [Object] VPN instance, the length of vrf name is 1 ~ 31, i.e. "test", but can not be C(_public_).
        attribute :vrf
        validates :vrf, presence: true

        # @return [Object] An interface that can binding VPN instance, i.e. 40GE1/0/22, Vlanif10. Must be fully qualified interface name. Interface types, such as 10GE, 40GE, 100GE, LoopBack, MEth, Tunnel, Vlanif....
        attribute :vpn_interface
        validates :vpn_interface, presence: true

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
