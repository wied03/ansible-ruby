# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Execute trunk-create or trunk-delete command.
      # Trunks can be used to aggregate network links at Layer 2 on the local switch. Use this command to create a new trunk.
      class Pn_trunk < Base
        # @return [Object, nil] Provide login username if user is not root.
        attribute :pn_cliusername

        # @return [Object, nil] Provide login password if user is not root.
        attribute :pn_clipassword

        # @return [Object, nil] Target switch(es) to run the cli on.
        attribute :pn_cliswitch

        # @return [:present, :absent, :update] State the action to perform. Use 'present' to create trunk, 'absent' to delete trunk and 'update' to modify trunk.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :update], :message=>"%{value} needs to be :present, :absent, :update"}

        # @return [String] Specify the name for the trunk configuration.
        attribute :pn_name
        validates :pn_name, presence: true, type: String

        # @return [Array<Integer>, Integer, nil] Specify the port number(s) for the link(s) to aggregate into the trunk.,Required for trunk-create.
        attribute :pn_ports
        validates :pn_ports, type: TypeGeneric.new(Integer)

        # @return [:disable, :"10m", :"100m", :"1g", :"2.5g", :"10g", :"40g", nil] Specify the port speed or disable the port.
        attribute :pn_speed
        validates :pn_speed, inclusion: {:in=>[:disable, :"10m", :"100m", :"1g", :"2.5g", :"10g", :"40g"], :message=>"%{value} needs to be :disable, :\"10m\", :\"100m\", :\"1g\", :\"2.5g\", :\"10g\", :\"40g\""}, allow_nil: true

        # @return [Object, nil] Specify an egress port data rate limit for the configuration.
        attribute :pn_egress_rate_limit

        # @return [Object, nil] Specify if the port can receive jumbo frames.
        attribute :pn_jumbo

        # @return [:off, :passive, :active, nil] Specify the LACP mode for the configuration.
        attribute :pn_lacp_mode
        validates :pn_lacp_mode, inclusion: {:in=>[:off, :passive, :active], :message=>"%{value} needs to be :off, :passive, :active"}, allow_nil: true

        # @return [Object, nil] Specify the LACP priority. This is a number between 1 and 65535 with a default value of 32768.
        attribute :pn_lacp_priority

        # @return [:slow, :fast, nil] Specify the LACP time out as slow (30 seconds) or fast (4seconds). The default value is slow.
        attribute :pn_lacp_timeout
        validates :pn_lacp_timeout, inclusion: {:in=>[:slow, :fast], :message=>"%{value} needs to be :slow, :fast"}, allow_nil: true

        # @return [:bundle, :individual, nil] Specify the LACP fallback mode as bundles or individual.
        attribute :pn_lacp_fallback
        validates :pn_lacp_fallback, inclusion: {:in=>[:bundle, :individual], :message=>"%{value} needs to be :bundle, :individual"}, allow_nil: true

        # @return [Object, nil] Specify the LACP fallback timeout in seconds. The range is between 30 and 60 seconds with a default value of 50 seconds.
        attribute :pn_lacp_fallback_timeout

        # @return [Object, nil] Specify if the switch is an edge switch.
        attribute :pn_edge_switch

        # @return [Object, nil] Specify if pause frames are sent.
        attribute :pn_pause

        # @return [Object, nil] Specify a description for the trunk configuration.
        attribute :pn_description

        # @return [Object, nil] Specify loopback if you want to use loopback.
        attribute :pn_loopback

        # @return [Object, nil] Specify if the configuration receives mirrored traffic.
        attribute :pn_mirror_receive

        # @return [Object, nil] Specify an unkown unicast level in percent. The default value is 100%.
        attribute :pn_unkown_ucast_level

        # @return [Object, nil] Specify an unkown multicast level in percent. The default value is 100%.
        attribute :pn_unkown_mcast_level

        # @return [Object, nil] Specify a broadcast level in percent. The default value is 100%.
        attribute :pn_broadcast_level

        # @return [Object, nil] Specify the MAC address of the port.
        attribute :pn_port_macaddr

        # @return [Object, nil] Specify a list of looping vlans.
        attribute :pn_loopvlans

        # @return [Object, nil] Specify if the port participates in routing on the network.
        attribute :pn_routing

        # @return [Object, nil] Host facing port control setting.
        attribute :pn_host
      end
    end
  end
end
