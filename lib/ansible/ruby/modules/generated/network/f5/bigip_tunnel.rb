# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages tunnels on a BIG-IP. Tunnels are usually based upon a tunnel profile which defines both default arguments and constraints for the tunnel.
      # Due to this, this module exposes a number of settings that may or may not be related to the type of tunnel you are working with. It is important that you take this into consideration when declaring your tunnel config.
      # If a specific tunnel does not support the parameter you are considering, the documentation of the parameter will usually make mention of this. Otherwise, when configuring that parameter on the device, the device will notify you.
      class Bigip_tunnel < Base
        # @return [String] Specifies the name of the tunnel.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Description of the tunnel.
        attribute :description

        # @return [Object, nil] Specifies the profile to associate with the tunnel for handling traffic.,Depending on your selection, other settings become available or disappear.,This parameter may not be changed after it is set.
        attribute :profile

        # @return [Integer, nil] When applied to a GRE tunnel, this value specifies an optional field in the GRE header, used to authenticate the source of the packet.,When applied to a VXLAN or Geneve tunnel, this value specifies the Virtual Network Identifier (VNI).,When applied to an NVGRE tunnel, this value specifies the Virtual Subnet Identifier (VSID).,When creating a new tunnel, if this parameter is supported by the tunnel profile but not specified, the default value is C(0).
        attribute :key
        validates :key, type: Integer

        # @return [String, nil] Specifies the IP address of the local endpoint of the tunnel.
        attribute :local_address
        validates :local_address, type: String

        # @return [Object, nil] Specifies the IP address of the remote endpoint of the tunnel.,For C(dslite), C(fec) (when configuring the FEC tunnel for receiving traffic only), C(v6rd) (configured as a border relay), or C(map), the tunnel must have an unspecified remote address (any).
        attribute :remote_address

        # @return [String, nil] Specifies a non-floating IP address for the tunnel, to be used with host-initiated traffic.
        attribute :secondary_address
        validates :secondary_address, type: String

        # @return [Integer, nil] Specifies the maximum transmission unit (MTU) of the tunnel.,When creating a new tunnel, if this parameter is supported by the tunnel profile but not specified, the default value is C(0).,The valid range is from C(0) to C(65515).
        attribute :mtu
        validates :mtu, type: Integer

        # @return [Boolean, nil] Enables or disables the tunnel to use the PMTU (Path MTU) information provided by ICMP NeedFrag error messages.,If C(yes) and the tunnel C(mtu) is set to C(0), the tunnel will use the PMTU information.,If C(yes) and the tunnel C(mtu) is fixed to a non-zero value, the tunnel will use the minimum of PMTU and MTU.,If C(no), the tunnel will use fixed MTU or calculate its MTU using tunnel encapsulation configurations.
        attribute :use_pmtu
        validates :use_pmtu, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Specifies the Type of Service (TOS) value to insert in the encapsulating header of transmitted packets.,When creating a new tunnel, if this parameter is supported by the tunnel profile but not specified, the default value is C(preserve).,When C(preserve), the system copies the TOS value from the inner header to the outer header.,You may also specify a numeric value. The possible values are from C(0) to C(255).
        attribute :tos
        validates :tos, type: String

        # @return [:default, :enabled, :disabled, nil] Allows you to configure auto last hop on a per-tunnel basis.,When creating a new tunnel, if this parameter is supported by the tunnel profile but not specified, the default is C(default).,When C(default), means that the system uses the global auto-lasthop setting to send back the request.,When C(enabled), allows the system to send return traffic to the MAC address that transmitted the request, even if the routing table points to a different network or interface. As a result, the system can send return traffic to clients even when there is no matching route.
        attribute :auto_last_hop
        validates :auto_last_hop, inclusion: {:in=>[:default, :enabled, :disabled], :message=>"%{value} needs to be :default, :enabled, :disabled"}, allow_nil: true

        # @return [String, nil] Specifies the traffic group to associate with the tunnel.,This value cannot be changed after it is set. This is a limitation of BIG-IP.
        attribute :traffic_group
        validates :traffic_group, type: String

        # @return [:bidirectional, :inbound, :outbound, nil] Specifies how the tunnel carries traffic.,When creating a new tunnel, if this parameter is supported by the tunnel profile but not specified, the default is C(bidirectional).,When C(bidirectional), specifies that the tunnel carries both inbound and outbound traffic.,When C(inbound), specifies that the tunnel carries only incoming traffic.,When C(outbound), specifies that the tunnel carries only outgoing traffic.
        attribute :mode
        validates :mode, inclusion: {:in=>[:bidirectional, :inbound, :outbound], :message=>"%{value} needs to be :bidirectional, :inbound, :outbound"}, allow_nil: true

        # @return [Object, nil] Specifies that the tunnel operates in transparent mode.,When C(yes), you can inspect and manipulate the encapsulated traffic flowing through the BIG-IP system.,A transparent tunnel terminates a tunnel while presenting the illusion that the tunnel transits the device unmodified (that is, the BIG-IP system appears as if it were an intermediate router that simply routes IP traffic through the device).
        attribute :transparent

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the tunnel exists.,When C(absent), ensures the tunnel is removed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
