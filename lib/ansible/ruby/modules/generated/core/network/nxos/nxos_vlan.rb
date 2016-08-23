# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Nxos_vlan < Base
        # @return [String] single vlan id
        attribute :vlan_id
        validates :vlan_id, type: String

        # @return [Array<String>] range of VLANs such as 2-10 or 2,5,10-15, etc.
        attribute :vlan_range, flat_array: true
        validates :vlan_range, type: TypeGeneric.new(String)

        # @return [String] name of VLAN
        attribute :name
        validates :name, type: String

        # @return [:active, :suspend, nil] Manage the vlan operational state of the VLAN (equivalent to state {active | suspend} command
        attribute :vlan_state
        validates :vlan_state, inclusion: {:in=>[:active, :suspend], :message=>"%{value} needs to be :active, :suspend"}, allow_nil: true

        # @return [:up, :down, nil] Manage the vlan admin state of the VLAN equivalent to shut/no shut in vlan config mode
        attribute :admin_state
        validates :admin_state, inclusion: {:in=>[:up, :down], :message=>"%{value} needs to be :up, :down"}, allow_nil: true

        # @return [:present, :absent, nil] Manage the state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
