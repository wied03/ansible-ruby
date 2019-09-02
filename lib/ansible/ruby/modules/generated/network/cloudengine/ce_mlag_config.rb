# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages MLAG configuration on HUAWEI CloudEngine switches.
      class Ce_mlag_config < Base
        # @return [String, nil] ID of a DFS group. The value is 1.
        attribute :dfs_group_id
        validates :dfs_group_id, type: String

        # @return [Object, nil] The nickname bound to a DFS group. The value is an integer that ranges from 1 to 65471.
        attribute :nickname

        # @return [Object, nil] A pseudo nickname of a DFS group. The value is an integer that ranges from 1 to 65471.
        attribute :pseudo_nickname

        # @return [Object, nil] The priority of a pseudo nickname. The value is an integer that ranges from 128 to 255. The default value is 192. A larger value indicates a higher priority.
        attribute :pseudo_priority

        # @return [Object, nil] IP address bound to the DFS group. The value is in dotted decimal notation.
        attribute :ip_address

        # @return [Object, nil] Name of the VPN instance bound to the DFS group. The value is a string of 1 to 31 case-sensitive characters without spaces. If the character string is quoted by double quotation marks, the character string can contain spaces. The value _public_ is reserved and cannot be used as the VPN instance name.
        attribute :vpn_instance_name

        # @return [Object, nil] Priority of a DFS group. The value is an integer that ranges from 1 to 254. The default value is 100.
        attribute :priority_id

        # @return [Object, nil] Name of the peer-link interface. The value is in the range from 0 to 511.
        attribute :eth_trunk_id

        # @return [Object, nil] Number of the peer-link interface. The value is 1.
        attribute :peer_link_id

        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
