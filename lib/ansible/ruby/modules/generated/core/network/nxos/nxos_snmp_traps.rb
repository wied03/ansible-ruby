# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages SNMP traps configurations.
      class Nxos_snmp_traps < Base
        # @return [:aaa, :bridge, :callhome, :cfs, :config, :entity, :"feature-control", :hsrp, :license, :link, :lldp, :ospf, :pim, :rf, :rmon, :snmp, :"storm-control", :stpx, :sysmgr, :system, :upgrade, :vtp, :all] Case sensitive group.
        attribute :group
        validates :group, presence: true, inclusion: {:in=>[:aaa, :bridge, :callhome, :cfs, :config, :entity, :"feature-control", :hsrp, :license, :link, :lldp, :ospf, :pim, :rf, :rmon, :snmp, :"storm-control", :stpx, :sysmgr, :system, :upgrade, :vtp, :all], :message=>"%{value} needs to be :aaa, :bridge, :callhome, :cfs, :config, :entity, :\"feature-control\", :hsrp, :license, :link, :lldp, :ospf, :pim, :rf, :rmon, :snmp, :\"storm-control\", :stpx, :sysmgr, :system, :upgrade, :vtp, :all"}

        # @return [:enabled, :disabled, nil] Manage the state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true
      end
    end
  end
end
