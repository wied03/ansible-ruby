# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages F5 BIG-IP GTM tcp half-open monitors.
      class Bigip_gtm_monitor_tcp_half_open < Base
        # @return [String] Monitor name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(tcp_half_open) parent on the C(Common) partition.
        attribute :parent
        validates :parent, type: String

        # @return [String, nil] IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.
        attribute :ip
        validates :ip, type: String

        # @return [Integer, nil] Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'. Note that if specifying an IP address, a value between 1 and 65535 must be specified
        attribute :port
        validates :port, type: Integer

        # @return [Object, nil] Specifies, in seconds, the frequency at which the system issues the monitor check when either the resource is down or the status of the resource is unknown.,When creating a new monitor, if this parameter is not provided, then the default value will be C(30). This value B(must) be less than the C(timeout) value.
        attribute :interval

        # @return [Object, nil] Specifies the number of seconds the target has in which to respond to the monitor request.,If the target responds within the set time period, it is considered up.,If the target does not respond within the set time period, it is considered down.,When this value is set to 0 (zero), the system uses the interval from the parent monitor.,When creating a new monitor, if this parameter is not provided, then the default value will be C(120).
        attribute :timeout

        # @return [Object, nil] Specifies the number of seconds the big3d process waits before sending out a subsequent probe attempt when a probe fails and multiple probe attempts have been requested.,When creating a new monitor, if this parameter is not provided, then the default value will be C(1).
        attribute :probe_interval

        # @return [Object, nil] Specifies the number of seconds after which the system times out the probe request to the system.,When creating a new monitor, if this parameter is not provided, then the default value will be C(5).
        attribute :probe_timeout

        # @return [Object, nil] Specifies the number of times the system attempts to probe the host server, after which the system considers the host server down or unavailable.,When creating a new monitor, if this parameter is not provided, then the default value will be C(3).
        attribute :probe_attempts

        # @return [Symbol, nil] Specifies that the monitor allows more than one probe attempt per interval.,When C(yes), specifies that the monitor ignores down responses for the duration of the monitor timeout. Once the monitor timeout is reached without the system receiving an up response, the system marks the object down.,When C(no), specifies that the monitor immediately marks an object down when it receives a down response.,When creating a new monitor, if this parameter is not provided, then the default value will be C(no).
        attribute :ignore_down_response
        validates :ignore_down_response, type: Symbol

        # @return [Symbol, nil] Specifies whether the monitor operates in transparent mode.,A monitor in transparent mode directs traffic through the associated pool members or nodes (usually a router or firewall) to the aliased destination (that is, it probes the C(ip)-C(port) combination specified in the monitor).,If the monitor cannot successfully reach the aliased destination, the pool member or node through which the monitor traffic was sent is marked down.,When creating a new monitor, if this parameter is not provided, then the default value will be C(no).
        attribute :transparent
        validates :transparent, type: Symbol

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
