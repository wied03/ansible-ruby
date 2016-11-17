# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Execute vlag-create/vlag-delete/vlag-modify command.
      # A virtual link aggregation group (VLAG) allows links that are physically connected to two different Pluribus Networks devices to appear as a single trunk to a third device. The third device can be a switch, server, or any Ethernet device. A VLAG can provide Layer 2 multipathing, which allows you to create redundancy by increasing bandwidth, enabling multiple parallel paths between nodes and loadbalancing traffic where alternative paths exist.
      class Pn_vlag < Base
        # @return [Object, nil] Provide login username if user is not root.
        attribute :pn_cliusername

        # @return [Object, nil] Provide login password if user is not root.
        attribute :pn_clipassword

        # @return [Object, nil] Target switch(es) to run this command on.
        attribute :pn_cliswitch

        # @return [:present, :absent, :update] State the action to perform. Use 'present' to create vlag, 'absent' to delete vlag and 'update' to modify vlag.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :update], :message=>"%{value} needs to be :present, :absent, :update"}

        # @return [String] The C(pn_name) takes a valid name for vlag configuration.
        attribute :pn_name
        validates :pn_name, presence: true, type: String

        # @return [String, nil] Specify the local VLAG port.,Required for vlag-create.
        attribute :pn_port
        validates :pn_port, type: String

        # @return [String, nil] Specify the peer VLAG port.,Required for vlag-create.
        attribute :pn_peer_port
        validates :pn_peer_port, type: String

        # @return [:"active-active", :"active-standby", nil] Specify the mode for the VLAG. Active-standby indicates one side is active and the other side is in standby mode. Active-active indicates that both sides of the vlag are up by default.
        attribute :pn_mode
        validates :pn_mode, inclusion: {:in=>[:"active-active", :"active-standby"], :message=>"%{value} needs to be :\"active-active\", :\"active-standby\""}, allow_nil: true

        # @return [String, nil] Specify the fabric-name of the peer switch.
        attribute :pn_peer_switch
        validates :pn_peer_switch, type: String

        # @return [:move, :ignore, nil] Specify the failover action as move or ignore.
        attribute :pn_failover_action
        validates :pn_failover_action, inclusion: {:in=>[:move, :ignore], :message=>"%{value} needs to be :move, :ignore"}, allow_nil: true

        # @return [:off, :passive, :active, nil] Specify the LACP mode.
        attribute :pn_lacp_mode
        validates :pn_lacp_mode, inclusion: {:in=>[:off, :passive, :active], :message=>"%{value} needs to be :off, :passive, :active"}, allow_nil: true

        # @return [:slow, :fast, nil] Specify the LACP timeout as slow(30 seconds) or fast(4 seconds).
        attribute :pn_lacp_timeout
        validates :pn_lacp_timeout, inclusion: {:in=>[:slow, :fast], :message=>"%{value} needs to be :slow, :fast"}, allow_nil: true

        # @return [:bundle, :individual, nil] Specify the LACP fallback mode as bundles or individual.
        attribute :pn_lacp_fallback
        validates :pn_lacp_fallback, inclusion: {:in=>[:bundle, :individual], :message=>"%{value} needs to be :bundle, :individual"}, allow_nil: true

        # @return [Object, nil] Specify the LACP fallback timeout in seconds. The range is between 30 and 60 seconds with a default value of 50 seconds.
        attribute :pn_lacp_fallback_timeout
      end
    end
  end
end
