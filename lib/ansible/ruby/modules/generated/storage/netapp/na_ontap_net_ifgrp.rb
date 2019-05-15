# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, modify, destroy the network interface group
      class Na_ontap_net_ifgrp < Base
        # @return [:present, :absent, nil] Whether the specified network interface group should exist or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:mac, :ip, :sequential, :port, nil] Specifies the traffic distribution function for the ifgrp.
        attribute :distribution_function
        validates :distribution_function, inclusion: {:in=>[:mac, :ip, :sequential, :port], :message=>"%{value} needs to be :mac, :ip, :sequential, :port"}, allow_nil: true

        # @return [String] Specifies the interface group name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Specifies the link policy for the ifgrp.
        attribute :mode
        validates :mode, type: String

        # @return [String] Specifies the name of node.
        attribute :node
        validates :node, presence: true, type: String

        # @return [String, nil] Adds the specified port.
        attribute :port
        validates :port, type: String
      end
    end
  end
end
