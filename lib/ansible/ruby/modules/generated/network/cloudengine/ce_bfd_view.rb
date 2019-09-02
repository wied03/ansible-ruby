# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages BFD session view configuration on HUAWEI CloudEngine devices.
      class Ce_bfd_view < Base
        # @return [Object] Specifies the name of a BFD session. The value is a string of 1 to 15 case-sensitive characters without spaces.
        attribute :session_name
        validates :session_name, presence: true

        # @return [Object, nil] Specifies the local discriminator of a BFD session. The value is an integer that ranges from 1 to 16384.
        attribute :local_discr

        # @return [Object, nil] Specifies the remote discriminator of a BFD session. The value is an integer that ranges from 1 to 4294967295.
        attribute :remote_discr

        # @return [Object, nil] Specifies the minimum interval for receiving BFD packets. The value is an integer that ranges from 50 to 1000, in milliseconds.
        attribute :min_tx_interval

        # @return [Object, nil] Specifies the minimum interval for sending BFD packets. The value is an integer that ranges from 50 to 1000, in milliseconds.
        attribute :min_rx_interval

        # @return [Object, nil] Specifies the local detection multiplier of a BFD session. The value is an integer that ranges from 3 to 50.
        attribute :detect_multi

        # @return [Object, nil] Specifies the WTR time of a BFD session. The value is an integer that ranges from 1 to 60, in minutes. The default value is 0.
        attribute :wtr_interval

        # @return [Object, nil] Specifies a priority for BFD control packets. The value is an integer ranging from 0 to 7. The default value is 7, which is the highest priority.
        attribute :tos_exp

        # @return [:yes, :no, nil] Enables the BFD session to enter the AdminDown state. By default, a BFD session is enabled. The default value is bool type.
        attribute :admin_down
        validates :admin_down, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Specifies the description of a BFD session. The value is a string of 1 to 51 case-sensitive characters with spaces.
        attribute :description

        # @return [:present, :absent, nil] Determines whether the config should be present or not on the device.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
