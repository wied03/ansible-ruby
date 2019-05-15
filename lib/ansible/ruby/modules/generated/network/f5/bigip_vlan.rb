# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage VLANs on a BIG-IP system
      class Bigip_vlan < Base
        # @return [Object, nil] The description to give to the VLAN.
        attribute :description

        # @return [Array<Float>, Float, nil] Specifies a list of tagged interfaces and trunks that you want to configure for the VLAN. Use tagged interfaces or trunks when you want to assign a single interface or trunk to multiple VLANs.
        attribute :tagged_interfaces
        validates :tagged_interfaces, type: TypeGeneric.new(Float)

        # @return [Object, nil] Specifies a list of untagged interfaces and trunks that you want to configure for the VLAN.
        attribute :untagged_interfaces

        # @return [String] The VLAN to manage. If the special VLAN C(ALL) is specified with the C(state) value of C(absent) then all VLANs will be removed.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] The state of the VLAN on the system. When C(present), guarantees that the VLAN exists with the provided attributes. When C(absent), removes the VLAN from the system.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Tag number for the VLAN. The tag number can be any integer between 1 and 4094. The system automatically assigns a tag number if you do not specify a value.
        attribute :tag
        validates :tag, type: String

        # @return [Object, nil] Specifies the maximum transmission unit (MTU) for traffic on this VLAN. When creating a new VLAN, if this parameter is not specified, the default value used will be C(1500).,This number must be between 576 to 9198.
        attribute :mtu

        # @return [:default, :"destination-address", :"source-address", :"dst-ip", :"src-ip", :dest, :destination, :source, :dst, :src, nil] Specifies how the traffic on the VLAN will be disaggregated. The value selected determines the traffic disaggregation method. You can choose to disaggregate traffic based on C(source-address) (the source IP address), C(destination-address) (destination IP address), or C(default), which specifies that the default CMP hash uses L4 ports.,When creating a new VLAN, if this parameter is not specified, the default of C(default) is used.
        attribute :cmp_hash
        validates :cmp_hash, inclusion: {:in=>[:default, :"destination-address", :"source-address", :"dst-ip", :"src-ip", :dest, :destination, :source, :dst, :src], :message=>"%{value} needs to be :default, :\"destination-address\", :\"source-address\", :\"dst-ip\", :\"src-ip\", :dest, :destination, :source, :dst, :src"}, allow_nil: true

        # @return [:inner, :outer, nil] Specifies how the disaggregator (DAG) distributes received tunnel-encapsulated packets to TMM instances. Select C(inner) to distribute packets based on information in inner headers. Select C(outer) to distribute packets based on information in outer headers without inspecting inner headers.,When creating a new VLAN, if this parameter is not specified, the default of C(outer) is used.,This parameter is not supported on Virtual Editions of BIG-IP.
        attribute :dag_tunnel
        validates :dag_tunnel, inclusion: {:in=>[:inner, :outer], :message=>"%{value} needs to be :inner, :outer"}, allow_nil: true

        # @return [Object, nil] Specifies whether some of the stateless traffic on the VLAN should be disaggregated in a round-robin order instead of using a static hash. The stateless traffic includes non-IP L2 traffic, ICMP, some UDP protocols, and so on.,When creating a new VLAN, if this parameter is not specified, the default of (no) is used.
        attribute :dag_round_robin

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String
      end
    end
  end
end
