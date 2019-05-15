# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages MLAG interface attributes on HUAWEI CloudEngine switches.
      class Ce_mlag_interface < Base
        # @return [Object, nil] Name of the local M-LAG interface. The value is ranging from 0 to 511.
        attribute :eth_trunk_id

        # @return [String, nil] ID of a DFS group.The value is 1.
        attribute :dfs_group_id
        validates :dfs_group_id, type: String

        # @return [Object, nil] ID of the M-LAG. The value is an integer that ranges from 1 to 2048.
        attribute :mlag_id

        # @return [Object, nil] M-LAG global LACP system MAC address. The value is a string of 0 to 255 characters. The default value is the MAC address of the Ethernet port of MPU.
        attribute :mlag_system_id

        # @return [Object, nil] M-LAG global LACP system priority. The value is an integer ranging from 0 to 65535. The default value is 32768.
        attribute :mlag_priority_id

        # @return [Object, nil] Name of the interface that enters the Error-Down state when the peer-link fails. The value is a string of 1 to 63 characters.
        attribute :interface

        # @return [:enable, :disable, nil] Configure the interface on the slave device to enter the Error-Down state.
        attribute :mlag_error_down
        validates :mlag_error_down, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
