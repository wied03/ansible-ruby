# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Execute vrouter-ospf-add, vrouter-ospf-remove command.
      # This command adds/removes Open Shortest Path First(OSPF) routing protocol to a virtual router(vRouter) service.
      class Pn_ospf < Base
        # @return [Object, nil] Provide login username if user is not root.
        attribute :pn_cliusername

        # @return [Object, nil] Provide login password if user is not root.
        attribute :pn_clipassword

        # @return [Object, nil] Target switch to run the CLI on.
        attribute :pn_cliswitch

        # @return [:present, :absent] Assert the state of the ospf. Use 'present' to add ospf and 'absent' to remove ospf.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] Specify the name of the vRouter.
        attribute :pn_vrouter_name
        validates :pn_vrouter_name, presence: true, type: String

        # @return [String] Specify the network IP (IPv4 or IPv6) address.
        attribute :pn_network_ip
        validates :pn_network_ip, presence: true, type: String

        # @return [String, nil] Stub area number for the configuration. Required for vrouter-ospf-add.
        attribute :pn_ospf_area
        validates :pn_ospf_area, type: String
      end
    end
  end
end
