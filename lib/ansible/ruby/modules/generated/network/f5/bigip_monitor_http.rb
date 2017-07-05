# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages F5 BIG-IP LTM monitors via iControl SOAP API
      class Bigip_monitor_http < Base
        # @return [:present, :absent, nil] Monitor state
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Monitor name
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Partition for the monitor
        attribute :partition
        validates :partition, type: String

        # @return [String, nil] The parent template of this monitor template
        attribute :parent
        validates :parent, type: String

        # @return [String, nil] Partition for the parent monitor
        attribute :parent_partition
        validates :parent_partition, type: String

        # @return [String] The send string for the monitor call
        attribute :send
        validates :send, presence: true, type: String

        # @return [String] The receive string for the monitor call
        attribute :receive
        validates :receive, presence: true, type: String

        # @return [String] The receive disable string for the monitor call
        attribute :receive_disable
        validates :receive_disable, presence: true, type: String

        # @return [String, nil] IP address part of the ipport definition. The default API setting is "0.0.0.0".
        attribute :ip
        validates :ip, type: String

        # @return [String, nil] Port address part of the ip/port definition. The default API setting is 0.
        attribute :port
        validates :port, type: String

        # @return [String, nil] The interval specifying how frequently the monitor instance of this template will run. By default, this interval is used for up and down states. The default API setting is 5.
        attribute :interval
        validates :interval, type: String

        # @return [String, nil] The number of seconds in which the node or service must respond to the monitor request. If the target responds within the set time period, it is considered up. If the target does not respond within the set time period, it is considered down. You can change this number to any number you want, however, it should be 3 times the interval number of seconds plus 1 second. The default API setting is 16.
        attribute :timeout
        validates :timeout, type: String

        # @return [String, nil] Specifies the amount of time in seconds after the first successful response before a node will be marked up. A value of 0 will cause a node to be marked up immediately after a valid response is received from the node. The default API setting is 0.
        attribute :time_until_up
        validates :time_until_up, type: String
      end
    end
  end
end
