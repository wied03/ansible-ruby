# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages VPN instance address family of HUAWEI CloudEngine switches.
      class Ce_vrf_af < Base
        # @return [Object] VPN instance.
        attribute :vrf
        validates :vrf, presence: true

        # @return [:v4, :v6, nil] VPN instance address family.
        attribute :vrf_aftype
        validates :vrf_aftype, expression_inclusion: {:in=>[:v4, :v6], :message=>"%{value} needs to be :v4, :v6"}, allow_nil: true

        # @return [Object, nil] VPN instance route distinguisher,the RD used to distinguish same route prefix from different vpn. The RD must be setted before setting vpn_target_value.
        attribute :route_distinguisher

        # @return [:present, :absent, nil] Manage the state of the vpn target.
        attribute :vpn_target_state
        validates :vpn_target_state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:export_extcommunity, :import_extcommunity, nil] VPN instance vpn target type.
        attribute :vpn_target_type
        validates :vpn_target_type, expression_inclusion: {:in=>[:export_extcommunity, :import_extcommunity], :message=>"%{value} needs to be :export_extcommunity, :import_extcommunity"}, allow_nil: true

        # @return [Object, nil] VPN instance target value. Such as X.X.X.X:number<0-65535> or number<0-65535>:number<0-4294967295> or number<0-65535>.number<0-65535>:number<0-65535> or number<65536-4294967295>:number<0-65535> but not support 0:0 and 0.0:0.
        attribute :vpn_target_value

        # @return [:yes, :no, nil] Is extend vpn or normal vpn.
        attribute :evpn
        validates :evpn, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent, nil] Manage the state of the af.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
