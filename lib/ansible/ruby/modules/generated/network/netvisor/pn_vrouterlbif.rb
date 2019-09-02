# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Execute vrouter-loopback-interface-add, vrouter-loopback-interface-remove commands.
      # Each fabric, cluster, standalone switch, or virtual network (VNET) can provide its tenants with a virtual router (vRouter) service that forwards traffic between networks and implements Layer 3 protocols.
      class Pn_vrouterlbif < Base
        # @return [Object, nil] Provide login username if user is not root.
        attribute :pn_cliusername

        # @return [Object, nil] Provide login password if user is not root.
        attribute :pn_clipassword

        # @return [Object, nil] Target switch(es) to run the cli on.
        attribute :pn_cliswitch

        # @return [:present, :absent] State the action to perform. Use 'present' to add vrouter loopback interface and 'absent' to remove vrouter loopback interface.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] Specify the name of the vRouter.
        attribute :pn_vrouter_name
        validates :pn_vrouter_name, presence: true, type: String

        # @return [Object, nil] Specify the interface index from 1 to 255.
        attribute :pn_index

        # @return [String] Specify the IP address.
        attribute :pn_interface_ip
        validates :pn_interface_ip, presence: true, type: String
      end
    end
  end
end
