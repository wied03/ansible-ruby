# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage networks on Vultr. A network cannot be updated. It needs to be deleted and re-created.
      class Vultr_network < Base
        # @return [String] Name of the network.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The CIDR IPv4 network block to be used when attaching servers to this network. Required if I(state=present).
        attribute :cidr
        validates :cidr, type: String

        # @return [String, nil] Region the network is deployed into. Required if I(state=present).
        attribute :region
        validates :region, type: String

        # @return [:present, :absent, nil] State of the network.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
