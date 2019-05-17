# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages Eth-Trunk specific configuration parameters on HUAWEI CloudEngine switches.
      class Ce_eth_trunk < Base
        # @return [Object] Eth-Trunk interface number. The value is an integer. The value range depends on the assign forward eth-trunk mode command. When 256 is specified, the value ranges from 0 to 255. When 512 is specified, the value ranges from 0 to 511. When 1024 is specified, the value ranges from 0 to 1023.
        attribute :trunk_id
        validates :trunk_id, presence: true

        # @return [:manual, :"lacp-dynamic", :"lacp-static", nil] Specifies the working mode of an Eth-Trunk interface.
        attribute :mode
        validates :mode, inclusion: {:in=>[:manual, :"lacp-dynamic", :"lacp-static"], :message=>"%{value} needs to be :manual, :\"lacp-dynamic\", :\"lacp-static\""}, allow_nil: true

        # @return [Object, nil] Specifies the minimum number of Eth-Trunk member links in the Up state. The value is an integer ranging from 1 to the maximum number of interfaces that can be added to a Eth-Trunk interface.
        attribute :min_links

        # @return [:"src-dst-ip", :"src-dst-mac", :enhanced, :"dst-ip", :"dst-mac", :"src-ip", :"src-mac", nil] Hash algorithm used for load balancing among Eth-Trunk member interfaces.
        attribute :hash_type
        validates :hash_type, inclusion: {:in=>[:"src-dst-ip", :"src-dst-mac", :enhanced, :"dst-ip", :"dst-mac", :"src-ip", :"src-mac"], :message=>"%{value} needs to be :\"src-dst-ip\", :\"src-dst-mac\", :enhanced, :\"dst-ip\", :\"dst-mac\", :\"src-ip\", :\"src-mac\""}, allow_nil: true

        # @return [Object, nil] List of interfaces that will be managed in a given Eth-Trunk. The interface name must be full name.
        attribute :members

        # @return [:yes, :no, nil] When true it forces Eth-Trunk members to match what is declared in the members param. This can be used to remove members.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent, nil] Manage the state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
