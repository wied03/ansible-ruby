# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vmware_portgroup < Base
        # @return [Object] vSwitch to modify
        attribute :switch_name
        validates :switch_name, presence: true

        # @return [Object] Portgroup name to add
        attribute :portgroup_name
        validates :portgroup_name, presence: true

        # @return [Object] VLAN ID to assign to portgroup
        attribute :vlan_id
        validates :vlan_id, presence: true
      end
    end
  end
end
