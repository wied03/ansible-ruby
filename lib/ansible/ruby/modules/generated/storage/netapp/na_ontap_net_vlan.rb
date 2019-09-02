# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or Delete a network VLAN
      class Na_ontap_net_vlan < Base
        # @return [:present, :absent, nil] Whether the specified network VLAN should exist or not
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The interface that hosts the VLAN interface.
        attribute :parent_interface
        validates :parent_interface, presence: true, type: String

        # @return [String] The VLAN id. Ranges from 1 to 4094.
        attribute :vlanid
        validates :vlanid, presence: true, type: String

        # @return [String] Node name of VLAN interface.
        attribute :node
        validates :node, presence: true, type: String
      end
    end
  end
end
