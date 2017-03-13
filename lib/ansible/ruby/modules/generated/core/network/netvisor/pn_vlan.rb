# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Execute vlan-create or vlan-delete command.
      # VLANs are used to isolate network traffic at Layer 2.The VLAN identifiers 0 and 4095 are reserved and cannot be used per the IEEE 802.1Q standard. The range of configurable VLAN identifiers is 2 through 4092.
      class Pn_vlan < Base
        # @return [Object, nil] Provide login username if user is not root.
        attribute :pn_cliusername

        # @return [Object, nil] Provide login password if user is not root.
        attribute :pn_clipassword

        # @return [Object, nil] Target switch(es) to run the cli on.
        attribute :pn_cliswitch

        # @return [:present, :absent] State the action to perform. Use 'present' to create vlan and 'absent' to delete vlan.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Integer] Specify a VLAN identifier for the VLAN. This is a value between 2 and 4092.
        attribute :pn_vlanid
        validates :pn_vlanid, presence: true, type: Integer

        # @return [:fabric, :local, nil] Specify a scope for the VLAN.,Required for vlan-create.
        attribute :pn_scope
        validates :pn_scope, inclusion: {:in=>[:fabric, :local], :message=>"%{value} needs to be :fabric, :local"}, allow_nil: true

        # @return [Object, nil] Specify a description for the VLAN.
        attribute :pn_description

        # @return [Object, nil] Specify if you want to collect statistics for a VLAN. Statistic collection is enabled by default.
        attribute :pn_stats

        # @return [Object, nil] Specifies the switch network data port number, list of ports, or range of ports. Port numbers must ne in the range of 1 to 64.
        attribute :pn_ports

        # @return [Object, nil] Specifies the ports that should have untagged packets mapped to the VLAN. Untagged packets are packets that do not contain IEEE 802.1Q VLAN tags.
        attribute :pn_untagged_ports
      end
    end
  end
end
