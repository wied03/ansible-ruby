# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages BFD global configuration on HUAWEI CloudEngine devices.
      class Ce_bfd_global < Base
        # @return [:enable, :disable, nil] Enables the global Bidirectional Forwarding Detection (BFD) function.
        attribute :bfd_enable
        validates :bfd_enable, expression_inclusion: {:in=>[:enable, :disable], :message=>"%{value} needs to be :enable, :disable"}, allow_nil: true

        # @return [Object, nil] Specifies the default multicast IP address. The value ranges from 224.0.0.107 to 224.0.0.250.
        attribute :default_ip

        # @return [Object, nil] Indicates the priority of BFD control packets for dynamic BFD sessions. The value is an integer ranging from 0 to 7. The default priority is 7, which is the highest priority of BFD control packets.
        attribute :tos_exp_dynamic

        # @return [Object, nil] Indicates the priority of BFD control packets for static BFD sessions. The value is an integer ranging from 0 to 7. The default priority is 7, which is the highest priority of BFD control packets.
        attribute :tos_exp_static

        # @return [Object, nil] Specifies an initial flapping suppression time for a BFD session. The value is an integer ranging from 1 to 3600000, in milliseconds. The default value is 2000.
        attribute :damp_init_wait_time

        # @return [Object, nil] Specifies a maximum flapping suppression time for a BFD session. The value is an integer ranging from 1 to 3600000, in milliseconds. The default value is 15000.
        attribute :damp_max_wait_time

        # @return [Object, nil] Specifies a secondary flapping suppression time for a BFD session. The value is an integer ranging from 1 to 3600000, in milliseconds. The default value is 5000.
        attribute :damp_second_wait_time

        # @return [Object, nil] Specifies the delay before a BFD session becomes Up. The value is an integer ranging from 1 to 600, in seconds. The default value is 0, indicating that a BFD session immediately becomes Up.
        attribute :delay_up_time

        # @return [:present, :absent, nil] Determines whether the config should be present or not on the device.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
