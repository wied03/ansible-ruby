# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages global attributes of VXLAN and bridge domain on HUAWEI CloudEngine devices.
      class Ce_vxlan_global < Base
        # @return [Object, nil] Specifies a bridge domain ID. The value is an integer ranging from 1 to 16777215.
        attribute :bridge_domain_id

        # @return [:enable, :disable, nil] Set the tunnel mode to VXLAN when configuring the VXLAN feature.
        attribute :tunnel_mode_vxlan
        validates :tunnel_mode_vxlan, expression_inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:enable, :disable, nil] Loop prevention of VXLAN traffic in non-enhanced mode. When the device works in non-enhanced mode, inter-card forwarding of VXLAN traffic may result in loops.
        attribute :nvo3_prevent_loops
        validates :nvo3_prevent_loops, expression_inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:enable, :disable, nil] Enabling or disabling the VXLAN ACL extension function.
        attribute :nvo3_acl_extend
        validates :nvo3_acl_extend, expression_inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:l2, :l3, nil] Configuring the Layer 3 VXLAN Gateway to Work in Non-loopback Mode.
        attribute :nvo3_gw_enhanced
        validates :nvo3_gw_enhanced, expression_inclusion: {:in=>[:l2, :l3], :message=>"%{value} needs to be :l2, :l3"}, allow_nil: true

        # @return [:enable, :disable, nil] Enabling or disabling the VXLAN service extension function.
        attribute :nvo3_service_extend
        validates :nvo3_service_extend, expression_inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:enable, :disable, nil] Eth-Trunk from load balancing VXLAN packets in optimized mode.
        attribute :nvo3_eth_trunk_hash
        validates :nvo3_eth_trunk_hash, expression_inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:enable, :disable, nil] Load balancing of VXLAN packets through ECMP in optimized mode.
        attribute :nvo3_ecmp_hash
        validates :nvo3_ecmp_hash, expression_inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [:present, :absent, nil] Determines whether the config should be present or not on the device.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
