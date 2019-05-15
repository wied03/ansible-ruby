# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages configuration of an OSPF VPN instance on HUAWEI CloudEngine switches.
      class Ce_ospf_vrf < Base
        # @return [Object] The ID of the ospf process. Valid values are an integer, 1 - 4294967295, the default value is 1.
        attribute :ospf
        validates :ospf, presence: true

        # @return [Object, nil] Specifies the ospf private route id,. Valid values are a string, formatted as an IP address (i.e. "10.1.1.1") the length is 0 - 20.
        attribute :route_id

        # @return [String, nil] Specifies the vpn instance which use ospf,length is 1 - 31. Valid values are a string.
        attribute :vrf
        validates :vrf, type: String

        # @return [Object, nil] Specifies the description information of ospf process.
        attribute :description

        # @return [Object, nil] Specifies the reference bandwidth used to assign ospf cost. Valid values are an integer, in Mbps, 1 - 2147483648, the default value is 100.
        attribute :bandwidth

        # @return [String, nil] Specifies the mode of timer to calculate interval of arrive LSA. If set the parameter but not specifies value, the default will be used. If true use general timer. If false use intelligent timer.
        attribute :lsaalflag
        validates :lsaalflag, type: String

        # @return [Object, nil] Specifies the interval of arrive LSA when use the general timer. Valid value is an integer, in millisecond, from 0 to 10000.
        attribute :lsaainterval

        # @return [Object, nil] Specifies the max interval of arrive LSA when use the intelligent timer. Valid value is an integer, in millisecond, from 0 to 10000, the default value is 1000.
        attribute :lsaamaxinterval

        # @return [Object, nil] Specifies the start interval of arrive LSA when use the intelligent timer. Valid value is an integer, in millisecond, from 0 to 10000, the default value is 500.
        attribute :lsaastartinterval

        # @return [Object, nil] Specifies the hold interval of arrive LSA when use the intelligent timer. Valid value is an integer, in millisecond, from 0 to 10000, the default value is 500.
        attribute :lsaaholdinterval

        # @return [String, nil] Specifies whether cancel the interval of LSA originate or not. If set the parameter but noe specifies value, the default will be used. true:cancel the interval of LSA originate, the interval is 0. false:do not cancel the interval of LSA originate.
        attribute :lsaointervalflag
        validates :lsaointervalflag, type: String

        # @return [Object, nil] Specifies the interval of originate LSA . Valid value is an integer, in second, from 0 to 10, the default value is 5.
        attribute :lsaointerval

        # @return [Object, nil] Specifies the max interval of originate LSA . Valid value is an integer, in millisecond, from 1 to 10000, the default value is 5000.
        attribute :lsaomaxinterval

        # @return [Object, nil] Specifies the start interval of originate LSA . Valid value is an integer, in millisecond, from 0 to 1000, the default value is 500.
        attribute :lsaostartinterval

        # @return [Object, nil] Specifies the hold interval of originate LSA . Valid value is an integer, in millisecond, from 0 to 5000, the default value is 1000.
        attribute :lsaoholdinterval

        # @return [:"intelligent-timer", :timer, :millisecond, nil] Specifies the mode of timer which used to calculate SPF. If set the parameter but noe specifies value, the default will be used. If is intelligent-timer, then use intelligent timer. If is timer, then use second level timer. If is millisecond, then use millisecond level timer.
        attribute :spfintervaltype
        validates :spfintervaltype, inclusion: {:in=>[:"intelligent-timer", :timer, :millisecond], :message=>"%{value} needs to be :\"intelligent-timer\", :timer, :millisecond"}, allow_nil: true

        # @return [Object, nil] Specifies the interval to calculate SPF when use second level  timer. Valid value is an integer, in second, from 1 to 10.
        attribute :spfinterval

        # @return [Object, nil] Specifies the interval to calculate SPF when use millisecond level  timer. Valid value is an integer, in millisecond, from 1 to 10000.
        attribute :spfintervalmi

        # @return [Object, nil] Specifies the max interval to calculate SPF when use intelligent timer. Valid value is an integer, in millisecond, from 1 to 20000, the default value is 5000.
        attribute :spfmaxinterval

        # @return [Object, nil] Specifies the start interval to calculate SPF when use intelligent timer. Valid value is an integer, in millisecond, from 1 to 1000, the default value is 50.
        attribute :spfstartinterval

        # @return [Object, nil] Specifies the hold interval to calculate SPF when use intelligent timer. Valid value is an integer, in millisecond, from 1 to 5000, the default value is 200.
        attribute :spfholdinterval

        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
