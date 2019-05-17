# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages DNS monitors on a BIG-IP.
      class Bigip_monitor_dns < Base
        # @return [String] Specifies the name of the monitor.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(dns) parent on the C(Common) partition.
        attribute :parent
        validates :parent, type: String

        # @return [Object, nil] The description of the monitor.
        attribute :description

        # @return [Integer, nil] The interval specifying how frequently the monitor instance of this template will run.,This value B(must) be less than the C(timeout) value.,When creating a new monitor, if this parameter is not provided, the default C(5) will be used.
        attribute :interval
        validates :interval, type: Integer

        # @return [Integer, nil] Specifies the interval for the system to use to perform the health check when a resource is up.,When C(0), specifies that the system uses the interval specified in C(interval) to check the health of the resource.,When any other number, enables specification of a different interval to use when checking the health of a resource that is up.,When creating a new monitor, if this parameter is not provided, the default C(0) will be used.
        attribute :up_interval
        validates :up_interval, type: Integer

        # @return [Object, nil] The number of seconds in which the node or service must respond to the monitor request.,If the target responds within the set time period, it is considered up.,If the target does not respond within the set time period, it is considered down.,You can change this number to any number you want, however, it should be 3 times the interval number of seconds plus 1 second.,If this parameter is not provided when creating a new monitor, then the default value will be C(16).
        attribute :timeout

        # @return [Symbol, nil] Specifies whether the monitor operates in transparent mode.,Monitors in transparent mode can monitor pool members through firewalls.,When creating a new monitor, if this parameter is not provided, then the default value will be C(no).
        attribute :transparent
        validates :transparent, type: Symbol

        # @return [Symbol, nil] Specifies whether the monitor operates in reverse mode.,When the monitor is in reverse mode, a successful receive string match marks the monitored object down instead of up. You can use the this mode only if you configure the C(receive) option.,This parameter is not compatible with the C(time_until_up) parameter. If C(time_until_up) is specified, it must be C(0). Or, if it already exists, it must be C(0).
        attribute :reverse
        validates :reverse, type: Symbol

        # @return [Object, nil] Specifies the IP address that the monitor uses from the resource record sections of the DNS response.,The IP address should be specified in the dotted-decimal notation or IPv6 notation.
        attribute :receive

        # @return [Object, nil] Specifies the amount of time in seconds after the first successful response before a node will be marked up.,A value of 0 will cause a node to be marked up immediately after a valid response is received from the node.,If this parameter is not provided when creating a new monitor, then the default value will be C(0).
        attribute :time_until_up

        # @return [Symbol, nil] Specifies whether the system automatically changes the status of a resource to B(enabled) at the next successful monitor check.,If you set this option to C(yes), you must manually re-enable the resource before the system can use it for load balancing connections.,When creating a new monitor, if this parameter is not specified, the default value is C(no).,When C(yes), specifies that you must manually re-enable the resource after an unsuccessful monitor check.,When C(no), specifies that the system automatically changes the status of a resource to B(enabled) at the next successful monitor check.
        attribute :manual_resume
        validates :manual_resume, type: Symbol

        # @return [Object, nil] IP address part of the IP/port definition.,If this parameter is not provided when creating a new monitor, then the default value will be C(*).
        attribute :ip

        # @return [Object, nil] Port address part of the IP/port definition.,If this parameter is not provided when creating a new monitor, then the default value will be C(*).,Note that if specifying an IP address, a value between 1 and 65535 must be specified.
        attribute :port

        # @return [String, nil] Specifies a query name for the monitor to use in a DNS query.
        attribute :query_name
        validates :query_name, type: String

        # @return [:a, :aaaa, nil] Specifies the type of DNS query that the monitor sends.,When creating a new monitor, if this parameter is not specified, the default value is C(a).,When C(a), specifies that the monitor will send a DNS query of type A.,When C(aaaa), specifies that the monitor will send a DNS query of type AAAA.
        attribute :query_type
        validates :query_type, inclusion: {:in=>[:a, :aaaa], :message=>"%{value} needs to be :a, :aaaa"}, allow_nil: true

        # @return [:"any-type", :anything, :"query-type", nil] Specifies the type of DNS query that the monitor sends.,When creating a new monitor, if this value is not specified, the default value is C(query-type).,When C(query-type), specifies that the response should contain at least one answer of which the resource record type matches the query type.,When C(any-type), specifies that the DNS message should contain at least one answer.,When C(anything), specifies that an empty answer is enough to mark the status of the node up.
        attribute :answer_section_contains
        validates :answer_section_contains, inclusion: {:in=>[:"any-type", :anything, :"query-type"], :message=>"%{value} needs to be :\"any-type\", :anything, :\"query-type\""}, allow_nil: true

        # @return [:"no-error", :anything, nil] Specifies the RCODE required in the response for an up status.,When creating a new monitor, if this parameter is not specified, the default value is C(no-error).,When C(no-error), specifies that the status of the node will be marked up if the received DNS message has no error.,When C(anything), specifies that the status of the node will be marked up irrespective of the RCODE in the DNS message received.,If this parameter is set to C(anything), it will disregard the C(receive) string, and nullify it if the monitor is being updated.
        attribute :accept_rcode
        validates :accept_rcode, inclusion: {:in=>[:"no-error", :anything], :message=>"%{value} needs to be :\"no-error\", :anything"}, allow_nil: true

        # @return [Symbol, nil] Specifies whether adaptive response time monitoring is enabled for this monitor.,When C(yes), the monitor determines the state of a service based on how divergent from the mean latency a monitor probe for that service is allowed to be. Also, values for the C(allowed_divergence), C(adaptive_limit), and and C(sampling_timespan) will be enforced.,When C(disabled), the monitor determines the state of a service based on the C(interval), C(up_interval), C(time_until_up), and C(timeout) monitor settings.
        attribute :adaptive
        validates :adaptive, type: Symbol

        # @return [:relative, :absolute, nil] When specifying a new monitor, if C(adaptive) is C(yes), the default is C(relative),When C(absolute), the number of milliseconds the latency of a monitor probe can exceed the mean latency of a monitor probe for the service being probed. In typical cases, if the monitor detects three probes in a row that miss the latency value you set, the pool member or node is marked down.,When C(relative), the percentage of deviation the latency of a monitor probe can exceed the mean latency of a monitor probe for the service being probed.
        attribute :allowed_divergence_type
        validates :allowed_divergence_type, inclusion: {:in=>[:relative, :absolute], :message=>"%{value} needs to be :relative, :absolute"}, allow_nil: true

        # @return [Object, nil] When specifying a new monitor, if C(adaptive) is C(yes), and C(type) is C(relative), the default is C(25) percent.
        attribute :allowed_divergence_value

        # @return [Object, nil] Specifies the absolute number of milliseconds that may not be exceeded by a monitor probe, regardless of C(allowed_divergence) setting, for a probe to be considered successful.,This value applies regardless of the value of the C(allowed_divergence) setting.,While this value can be configured when C(adaptive) is C(no), it will not take effect on the system until C(adaptive) is C(yes).
        attribute :adaptive_limit

        # @return [Object, nil] Specifies the length, in seconds, of the probe history window that the system uses to calculate the mean latency and standard deviation of a monitor probe.,While this value can be configured when C(adaptive) is C(no), it will not take effect on the system until C(adaptive) is C(yes).
        attribute :sampling_timespan

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the monitor exists.,When C(absent), ensures the monitor is removed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
