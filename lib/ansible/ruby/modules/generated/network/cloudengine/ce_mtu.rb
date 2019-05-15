# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages MTU settings on HUAWEI CloudEngine switches.
      class Ce_mtu < Base
        # @return [Object, nil] Full name of interface, i.e. 40GE1/0/22.
        attribute :interface

        # @return [Object, nil] MTU for a specific interface. The value is an integer ranging from 46 to 9600, in bytes.
        attribute :mtu

        # @return [Object, nil] Maximum frame size. The default value is 9216. The value is an integer and expressed in bytes. The value range is 1536 to 12224 for the CE12800 and 1536 to 12288 for ToR switches.
        attribute :jumbo_max

        # @return [Object, nil] Non-jumbo frame size threshod. The default value is 1518. The value is an integer that ranges from 1518 to jumbo_max, in bytes.
        attribute :jumbo_min

        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
