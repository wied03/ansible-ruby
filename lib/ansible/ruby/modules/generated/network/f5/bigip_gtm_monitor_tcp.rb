# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages F5 BIG-IP GTM tcp monitors.
      class Bigip_gtm_monitor_tcp < Base
        # @return [String] Monitor name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(tcp) parent on the C(Common) partition.
        attribute :parent
        validates :parent, type: String

        # @return [String, nil] The send string for the monitor call.
        attribute :send
        validates :send, type: String

        # @return [String, nil] The receive string for the monitor call.
        attribute :receive
        validates :receive, type: String

        # @return [String, nil] IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.,If this value is an IP address, then a C(port) number must be specified.
        attribute :ip
        validates :ip, type: String

        # @return [Integer, nil] Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'. Note that if specifying an IP address, a value between 1 and 65535 must be specified
        attribute :port
        validates :port, type: Integer

        # @return [Object, nil] The interval specifying how frequently the monitor instance of this template will run.,If this parameter is not provided when creating a new monitor, then the default value will be 30.,This value B(must) be less than the C(timeout) value.
        attribute :interval

        # @return [Object, nil] The number of seconds in which the node or service must respond to the monitor request. If the target responds within the set time period, it is considered up. If the target does not respond within the set time period, it is considered down. You can change this number to any number you want, however, it should be 3 times the interval number of seconds plus 1 second.,If this parameter is not provided when creating a new monitor, then the default value will be 120.
        attribute :timeout

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the monitor exists.,When C(absent), ensures the monitor is removed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Specifies the number of seconds after which the system times out the probe request to the system.,When creating a new monitor, if this parameter is not provided, then the default value will be C(5).
        attribute :probe_timeout

        # @return [Symbol, nil] Specifies that the monitor allows more than one probe attempt per interval.,When C(yes), specifies that the monitor ignores down responses for the duration of the monitor timeout. Once the monitor timeout is reached without the system receiving an up response, the system marks the object down.,When C(no), specifies that the monitor immediately marks an object down when it receives a down response.,When creating a new monitor, if this parameter is not provided, then the default value will be C(no).
        attribute :ignore_down_response
        validates :ignore_down_response, type: Symbol

        # @return [Symbol, nil] Specifies whether the monitor operates in transparent mode.,A monitor in transparent mode directs traffic through the associated pool members or nodes (usually a router or firewall) to the aliased destination (that is, it probes the C(ip)-C(port) combination specified in the monitor).,If the monitor cannot successfully reach the aliased destination, the pool member or node through which the monitor traffic was sent is marked down.,When creating a new monitor, if this parameter is not provided, then the default value will be C(no).
        attribute :transparent
        validates :transparent, type: Symbol

        # @return [Symbol, nil] Instructs the system to mark the target resource down when the test is successful. This setting is useful, for example, if the content on your web site home page is dynamic and changes frequently, you may want to set up a reverse ECV service check that looks for the string Error.,A match for this string means that the web server was down.,To use this option, you must specify values for C(send) and C(receive).
        attribute :reverse
        validates :reverse, type: Symbol
      end
    end
  end
end
