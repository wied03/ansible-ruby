# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module offers the ability to set the VNI and mapped to the BD, and configure an ingress replication list on HUAWEI CloudEngine devices.
      class Ce_vxlan_tunnel < Base
        # @return [Object, nil] Specifies a bridge domain ID. The value is an integer ranging from 1 to 16777215.
        attribute :bridge_domain_id

        # @return [Object, nil] Specifies a VXLAN network identifier (VNI) ID. The value is an integer ranging from 1 to 16000000.
        attribute :vni_id

        # @return [Object, nil] Specifies the number of an NVE interface. The value ranges from 1 to 2.
        attribute :nve_name

        # @return [:"mode-l2", :"mode-l3", nil] Specifies the working mode of an NVE interface.
        attribute :nve_mode
        validates :nve_mode, expression_inclusion: {:in=>[:"mode-l2", :"mode-l3"], :message=>"%{value} needs to be :\"mode-l2\", :\"mode-l3\""}, allow_nil: true

        # @return [Object, nil] Specifies the IP address of a remote VXLAN tunnel endpoints (VTEP). The value is in dotted decimal notation.
        attribute :peer_list_ip

        # @return [:bgp, :null, nil] The operation type of routing protocol.
        attribute :protocol_type
        validates :protocol_type, expression_inclusion: {:in=>[:bgp, :null], :message=>"%{value} needs to be :bgp, :null"}, allow_nil: true

        # @return [Object, nil] Specifies an IP address for a source VTEP. The value is in dotted decimal notation.
        attribute :source_ip

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
