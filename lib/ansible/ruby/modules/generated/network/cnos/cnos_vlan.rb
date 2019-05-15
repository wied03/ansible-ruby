# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows you to work with VLAN related configurations. The operators used are overloaded to ensure control over switch VLAN configurations. The first level of VLAN configuration allows to set up the VLAN range, the VLAN tag persistence, a VLAN access map and access map filter. After passing this level, there are five VLAN arguments that will perform further configurations. They are vlanArg1, vlanArg2, vlanArg3, vlanArg4, and vlanArg5. The value of vlanArg1 will determine the way following arguments will be evaluated. This module uses SSH to manage network device configuration. The results of the operation will be placed in a directory named 'results' that must be created by the user in their local directory to where the playbook is run. For more information about this module from Lenovo and customizing it usage for your use cases, please visit U(http://systemx.lenovofiles.com/help/index.jsp?topic=%2Fcom.lenovo.switchmgt.ansible.doc%2Fcnos_vlan.html)
      class Cnos_vlan < Base
        # @return [:"access-map", :dot1q, :filter, :"<1-3999> VLAN ID 1-3999 or range"] This is an overloaded vlan first argument. Usage of this argument can be found is the User Guide referenced above.
        attribute :vlanArg1
        validates :vlanArg1, presence: true, inclusion: {:in=>[:"access-map", :dot1q, :filter, :"<1-3999> VLAN ID 1-3999 or range"], :message=>"%{value} needs to be :\"access-map\", :dot1q, :filter, :\"<1-3999> VLAN ID 1-3999 or range\""}

        # @return [:"VLAN Access Map name", :"egress-only", :name, :flood, :state, :ip, nil] This is an overloaded vlan second argument. Usage of this argument can be found is the User Guide referenced above.
        attribute :vlanArg2
        validates :vlanArg2, inclusion: {:in=>[:"VLAN Access Map name", :"egress-only", :name, :flood, :state, :ip], :message=>"%{value} needs to be :\"VLAN Access Map name\", :\"egress-only\", :name, :flood, :state, :ip"}, allow_nil: true

        # @return [:action, :match, :statistics, :"enter VLAN id or range of vlan", :"ascii name for the VLAN", :"ipv4 or ipv6", :"active or suspend", :"fast-leave", :"last-member-query-interval", :mrouter, :querier, :"querier-timeout", :"query-interval", :"query-max-response-time", :"report-suppression", :"robustness-variable", :"startup-query-count", :"startup-query-interval", :"static-group", nil] This is an overloaded vlan third argument. Usage of this argument can be found is the User Guide referenced above.
        attribute :vlanArg3
        validates :vlanArg3, inclusion: {:in=>[:action, :match, :statistics, :"enter VLAN id or range of vlan", :"ascii name for the VLAN", :"ipv4 or ipv6", :"active or suspend", :"fast-leave", :"last-member-query-interval", :mrouter, :querier, :"querier-timeout", :"query-interval", :"query-max-response-time", :"report-suppression", :"robustness-variable", :"startup-query-count", :"startup-query-interval", :"static-group"], :message=>"%{value} needs to be :action, :match, :statistics, :\"enter VLAN id or range of vlan\", :\"ascii name for the VLAN\", :\"ipv4 or ipv6\", :\"active or suspend\", :\"fast-leave\", :\"last-member-query-interval\", :mrouter, :querier, :\"querier-timeout\", :\"query-interval\", :\"query-max-response-time\", :\"report-suppression\", :\"robustness-variable\", :\"startup-query-count\", :\"startup-query-interval\", :\"static-group\""}, allow_nil: true

        # @return [:"drop or forward or redirect", :"ip or mac", :"Interval in seconds", :ethernet, :"port-aggregation", :"Querier IP address", :"Querier Timeout in seconds", :"Query Interval in seconds", :"Query Max Response Time in seconds", :"Robustness Variable value", :"Number of queries sent at startup", :"Query Interval at startup", nil] This is an overloaded vlan fourth argument. Usage of this argument can be found is the User Guide referenced above.
        attribute :vlanArg4
        validates :vlanArg4, inclusion: {:in=>[:"drop or forward or redirect", :"ip or mac", :"Interval in seconds", :ethernet, :"port-aggregation", :"Querier IP address", :"Querier Timeout in seconds", :"Query Interval in seconds", :"Query Max Response Time in seconds", :"Robustness Variable value", :"Number of queries sent at startup", :"Query Interval at startup"], :message=>"%{value} needs to be :\"drop or forward or redirect\", :\"ip or mac\", :\"Interval in seconds\", :ethernet, :\"port-aggregation\", :\"Querier IP address\", :\"Querier Timeout in seconds\", :\"Query Interval in seconds\", :\"Query Max Response Time in seconds\", :\"Robustness Variable value\", :\"Number of queries sent at startup\", :\"Query Interval at startup\""}, allow_nil: true

        # @return [:"access-list name", :"Slot/chassis number", :"Port Aggregation Number", nil] This is an overloaded vlan fifth argument. Usage of this argument can be found is the User Guide referenced above.
        attribute :vlanArg5
        validates :vlanArg5, inclusion: {:in=>[:"access-list name", :"Slot/chassis number", :"Port Aggregation Number"], :message=>"%{value} needs to be :\"access-list name\", :\"Slot/chassis number\", :\"Port Aggregation Number\""}, allow_nil: true
      end
    end
  end
end
