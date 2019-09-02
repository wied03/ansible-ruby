# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages VLAN configurations on Huawei CloudEngine switches.
      class Ce_vlan < Base
        # @return [Object, nil] Single VLAN ID, in the range from 1 to 4094.
        attribute :vlan_id

        # @return [Object, nil] Range of VLANs such as C(2-10) or C(2,5,10-15), etc.
        attribute :vlan_range

        # @return [String, nil] Name of VLAN, in the range from 1 to 31.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] Specify VLAN description, in the range from 1 to 80.
        attribute :description

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
