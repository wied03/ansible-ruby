# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages F5 BIG-IP LTM udp monitors.
      class Bigip_monitor_udp < Base
        # @return [String] Monitor name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(udp) parent on the C(Common) partition.
        attribute :parent
        validates :parent, type: String

        # @return [Object, nil] The description of the monitor.
        attribute :description

        # @return [Object, nil] The send string for the monitor call. When creating a new monitor, if this value is not provided, the default C(default send string) will be used.
        attribute :send

        # @return [Object, nil] The receive string for the monitor call.
        attribute :receive

        # @return [Object, nil] This setting works like C(receive), except that the system marks the node or pool member disabled when its response matches the C(receive_disable) string but not C(receive). To use this setting, you must specify both C(receive_disable) and C(receive).
        attribute :receive_disable

        # @return [String, nil] IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.
        attribute :ip
        validates :ip, type: String

        # @return [Object, nil] Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'. Note that if specifying an IP address, a value between 1 and 65535 must be specified.
        attribute :port

        # @return [Object, nil] The interval specifying how frequently the monitor instance of this template will run. If this parameter is not provided when creating a new monitor, then the default value will be 5. This value B(must) be less than the C(timeout) value.
        attribute :interval

        # @return [Object, nil] The number of seconds in which the node or service must respond to the monitor request. If the target responds within the set time period, it is considered up. If the target does not respond within the set time period, it is considered down. You can change this number to any number you want, however, it should be 3 times the interval number of seconds plus 1 second. If this parameter is not provided when creating a new monitor, then the default value will be 16.
        attribute :timeout

        # @return [Object, nil] Specifies the amount of time in seconds after the first successful response before a node will be marked up. A value of 0 will cause a node to be marked up immediately after a valid response is received from the node. If this parameter is not provided when creating a new monitor, then the default value will be 0.
        attribute :time_until_up

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the monitor exists.,When C(absent), ensures the monitor is removed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
