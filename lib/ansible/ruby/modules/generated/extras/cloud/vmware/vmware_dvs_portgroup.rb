# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vmware_dvs_portgroup < Base
        # @return [String] The name of the portgroup that is to be created or deleted
        attribute :portgroup_name
        validates :portgroup_name, presence: true, type: String

        # @return [String] The name of the distributed vSwitch the port group should be created on.
        attribute :switch_name
        validates :switch_name, presence: true, type: String

        # @return [Fixnum] The VLAN ID that should be configured with the portgroup
        attribute :vlan_id
        validates :vlan_id, presence: true, type: Fixnum

        # @return [Fixnum] The number of ports the portgroup should contain
        attribute :num_ports
        validates :num_ports, presence: true, type: Fixnum

        # @return [:earlyBinding, :lateBinding, :ephemeral] See VMware KB 1022312 regarding portgroup types
        attribute :portgroup_type
        validates :portgroup_type, presence: true, inclusion: {:in=>[:earlyBinding, :lateBinding, :ephemeral], :message=>"%{value} needs to be :earlyBinding, :lateBinding, :ephemeral"}
      end
    end
  end
end
