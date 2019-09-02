# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows you to work with virtual Link Aggregation Groups (vLAG) related configurations. The operators used are overloaded to ensure control over switch vLAG configurations. Apart from the regular device connection related attributes, there are four vLAG arguments which are overloaded variables that will perform further configurations. They are vlagArg1, vlagArg2, vlagArg3, and vlagArg4. For more details on how to use these arguments, see [Overloaded Variables]. This module uses SSH to manage network device configuration. The results of the operation will be placed in a directory named 'results' that must be created by the user in their local directory to where the playbook is run. For more information about this module from Lenovo and customizing it usage for your use cases, please visit U(http://systemx.lenovofiles.com/help/index.jsp?topic=%2Fcom.lenovo.switchmgt.ansible.doc%2Fcnos_vlag.html)
      class Cnos_vlag < Base
        # @return [:enable, :"auto-recovery", :"config-consistency", :isl, :"mac-address-table", :"peer-gateway", :priority, :"startup-delay", :"tier-id", :vrrp, :instance, :hlthchk] This is an overloaded vlag first argument. Usage of this argument can be found is the User Guide referenced above.
        attribute :vlagArg1
        validates :vlagArg1, presence: true, expression_inclusion: {:in=>[:enable, :"auto-recovery", :"config-consistency", :isl, :"mac-address-table", :"peer-gateway", :priority, :"startup-delay", :"tier-id", :vrrp, :instance, :hlthchk], :message=>"%{value} needs to be :enable, :\"auto-recovery\", :\"config-consistency\", :isl, :\"mac-address-table\", :\"peer-gateway\", :priority, :\"startup-delay\", :\"tier-id\", :vrrp, :instance, :hlthchk"}

        # @return [:"Interval in seconds", :"disable or strict", :"Port Aggregation Number", :"VLAG priority", :"Delay time in seconds", :"VLAG tier-id value", :"VLAG instance number", :"keepalive-attempts", :"keepalive-interval", :"retry-interval", :"peer-ip", nil] This is an overloaded vlag second argument. Usage of this argument can be found is the User Guide referenced above.
        attribute :vlagArg2
        validates :vlagArg2, expression_inclusion: {:in=>[:"Interval in seconds", :"disable or strict", :"Port Aggregation Number", :"VLAG priority", :"Delay time in seconds", :"VLAG tier-id value", :"VLAG instance number", :"keepalive-attempts", :"keepalive-interval", :"retry-interval", :"peer-ip"], :message=>"%{value} needs to be :\"Interval in seconds\", :\"disable or strict\", :\"Port Aggregation Number\", :\"VLAG priority\", :\"Delay time in seconds\", :\"VLAG tier-id value\", :\"VLAG instance number\", :\"keepalive-attempts\", :\"keepalive-interval\", :\"retry-interval\", :\"peer-ip\""}, allow_nil: true

        # @return [:"enable or port-aggregation", :"Number of keepalive attempts", :"Interval in seconds", :"Interval in seconds", :"VLAG health check peer IP4 address", nil] This is an overloaded vlag third argument. Usage of this argument can be found is the User Guide referenced above.
        attribute :vlagArg3
        validates :vlagArg3, expression_inclusion: {:in=>[:"enable or port-aggregation", :"Number of keepalive attempts", :"Interval in seconds", :"Interval in seconds", :"VLAG health check peer IP4 address"], :message=>"%{value} needs to be :\"enable or port-aggregation\", :\"Number of keepalive attempts\", :\"Interval in seconds\", :\"Interval in seconds\", :\"VLAG health check peer IP4 address\""}, allow_nil: true

        # @return [:"Port Aggregation Number", :"default or management", nil] This is an overloaded vlag fourth argument. Usage of this argument can be found is the User Guide referenced above.
        attribute :vlagArg4
        validates :vlagArg4, expression_inclusion: {:in=>[:"Port Aggregation Number", :"default or management"], :message=>"%{value} needs to be :\"Port Aggregation Number\", :\"default or management\""}, allow_nil: true
      end
    end
  end
end
