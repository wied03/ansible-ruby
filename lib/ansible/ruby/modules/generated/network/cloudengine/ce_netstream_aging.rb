# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages timeout mode of NetStream on HUAWEI CloudEngine switches.
      class Ce_netstream_aging < Base
        # @return [Integer, nil] Netstream timeout interval. If is active type the interval is 1-60. If is inactive ,the interval is 5-600.
        attribute :timeout_interval
        validates :timeout_interval, type: Integer

        # @return [:ip, :vxlan, nil] Specifies the packet type of netstream timeout active interval.
        attribute :type
        validates :type, inclusion: {:in=>[:ip, :vxlan], :message=>"%{value} needs to be :ip, :vxlan"}, allow_nil: true

        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:active, :inactive, :"tcp-session", :manual, nil] Netstream timeout type.
        attribute :timeout_type
        validates :timeout_type, inclusion: {:in=>[:active, :inactive, :"tcp-session", :manual], :message=>"%{value} needs to be :active, :inactive, :\"tcp-session\", :manual"}, allow_nil: true

        # @return [Object, nil] Specifies the slot number of netstream manual timeout.
        attribute :manual_slot
      end
    end
  end
end
