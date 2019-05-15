# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages Ethernet Virtual Private Network (EVPN) VXLAN Network Identifier (VNI) configurations on HUAWEI CloudEngine switches.
      class Ce_evpn_bd_vni < Base
        # @return [Object] Specify an existed bridge domain (BD).The value is an integer ranging from 1 to 16777215.
        attribute :bridge_domain_id
        validates :bridge_domain_id, presence: true

        # @return [:enable, :disable, nil] Create or delete an EVPN instance for a VXLAN in BD view.
        attribute :evpn
        validates :evpn, inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [Object, nil] Configures a route distinguisher (RD) for a BD EVPN instance. The format of an RD can be as follows,1) 2-byte AS number:4-byte user-defined number, for example, 1:3. An AS number is an integer ranging from 0 to 65535, and a user-defined number is an integer ranging from 0 to 4294967295. The AS and user-defined numbers cannot be both 0s. This means that an RD cannot be 0:0.,2) Integral 4-byte AS number:2-byte user-defined number, for example, 65537:3. An AS number is an integer ranging from 65536 to 4294967295, and a user-defined number is an integer ranging from 0 to 65535.,3) 4-byte AS number in dotted notation:2-byte user-defined number, for example, 0.0:3 or 0.1:0. A 4-byte AS number in dotted notation is in the format of x.y, where x and y are integers ranging from 0 to 65535.,4) A user-defined number is an integer ranging from 0 to 65535. The AS and user-defined numbers cannot be both 0s. This means that an RD cannot be 0.0:0.,5) 32-bit IP address:2-byte user-defined number. For example, 192.168.122.15:1. An IP address ranges from 0.0.0.0 to 255.255.255.255, and a user-defined number is an integer ranging from 0 to 65535.,6) 'auto' specifies the RD that is automatically generated.
        attribute :route_distinguisher

        # @return [Object, nil] Add VPN targets to both the import and export VPN target lists of a BD EVPN instance. The format is the same as route_distinguisher.
        attribute :vpn_target_both

        # @return [Object] Add VPN targets to the import VPN target list of a BD EVPN instance. The format is the same as route_distinguisher.
        attribute :vpn_target_import
        validates :vpn_target_import, presence: true

        # @return [Object, nil] Add VPN targets to the export VPN target list of a BD EVPN instance. The format is the same as route_distinguisher.
        attribute :vpn_target_export

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
