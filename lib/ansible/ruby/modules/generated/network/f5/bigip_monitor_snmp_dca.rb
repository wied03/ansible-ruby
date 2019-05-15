# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The BIG-IP has an SNMP data collecting agent (DCA) that can query remote SNMP agents of various types, including the UC Davis agent (UCD) and the Windows 2000 Server agent (WIN2000).
      class Bigip_monitor_snmp_dca < Base
        # @return [String] Monitor name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Specifies descriptive text that identifies the monitor.
        attribute :description

        # @return [String, nil] The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(snmp_dca) parent on the C(Common) partition.
        attribute :parent
        validates :parent, type: String

        # @return [Object, nil] Specifies, in seconds, the frequency at which the system issues the monitor check when either the resource is down or the status of the resource is unknown. When creating a new monitor, the default is C(10).
        attribute :interval

        # @return [Object, nil] Specifies the number of seconds the target has in which to respond to the monitor request. When creating a new monitor, the default is C(30) seconds. If the target responds within the set time period, it is considered 'up'. If the target does not respond within the set time period, it is considered 'down'. When this value is set to 0 (zero), the system uses the interval from the parent monitor. Note that C(timeout) and C(time_until_up) combine to control when a resource is set to up.
        attribute :timeout

        # @return [Object, nil] Specifies the number of seconds to wait after a resource first responds correctly to the monitor before setting the resource to 'up'. During the interval, all responses from the resource must be correct. When the interval expires, the resource is marked 'up'. A value of 0, means that the resource is marked up immediately upon receipt of the first correct response. When creating a new monitor, the default is C(0).
        attribute :time_until_up

        # @return [Object, nil] Specifies the community name that the system must use to authenticate with the host server through SNMP. When creating a new monitor, the default value is C(public). Note that this value is case sensitive.
        attribute :community

        # @return [:v1, :v2c, nil] Specifies the version of SNMP that the host server uses. When creating a new monitor, the default is C(v1). When C(v1), specifies that the host server uses SNMP version 1. When C(v2c), specifies that the host server uses SNMP version 2c.
        attribute :version
        validates :version, inclusion: {:in=>[:v1, :v2c], :message=>"%{value} needs to be :v1, :v2c"}, allow_nil: true

        # @return [:UCD, :WIN2000, :GENERIC, nil] Specifies the SNMP agent running on the monitored server. When creating a new monitor, the default is C(UCD) (UC-Davis).
        attribute :agent_type
        validates :agent_type, inclusion: {:in=>[:UCD, :WIN2000, :GENERIC], :message=>"%{value} needs to be :UCD, :WIN2000, :GENERIC"}, allow_nil: true

        # @return [Object, nil] Specifies the coefficient that the system uses to calculate the weight of the CPU threshold in the dynamic ratio load balancing algorithm. When creating a new monitor, the default is C(1.5).
        attribute :cpu_coefficient

        # @return [Object, nil] Specifies the maximum acceptable CPU usage on the target server. When creating a new monitor, the default is C(80) percent.
        attribute :cpu_threshold

        # @return [Object, nil] Specifies the coefficient that the system uses to calculate the weight of the memory threshold in the dynamic ratio load balancing algorithm. When creating a new monitor, the default is C(1.0).
        attribute :memory_coefficient

        # @return [Object, nil] Specifies the maximum acceptable memory usage on the target server. When creating a new monitor, the default is C(70) percent.
        attribute :memory_threshold

        # @return [Object, nil] Specifies the coefficient that the system uses to calculate the weight of the disk threshold in the dynamic ratio load balancing algorithm. When creating a new monitor, the default is C(2.0).
        attribute :disk_coefficient

        # @return [Object, nil] Specifies the maximum acceptable disk usage on the target server. When creating a new monitor, the default is C(90) percent.
        attribute :disk_threshold

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
