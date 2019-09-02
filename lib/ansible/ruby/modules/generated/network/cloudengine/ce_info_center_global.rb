# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module offers the ability to be output to the log buffer, log file, console, terminal, or log host on HUAWEI CloudEngine switches.
      class Ce_info_center_global < Base
        # @return [:true, :false, nil] Whether the info-center function is enabled. The value is of the Boolean type.
        attribute :info_center_enable
        validates :info_center_enable, expression_inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [Object, nil] Set the priority of the syslog packet.The value is an integer ranging from 0 to 7. The default value is 0.
        attribute :packet_priority

        # @return [:false, :true, nil] Whether a device is enabled to suppress duplicate statistics. The value is of the Boolean type.
        attribute :suppress_enable
        validates :suppress_enable, expression_inclusion: {:in=>[:false, :true], :message=>"%{value} needs to be :false, :true"}, allow_nil: true

        # @return [Object, nil] Maximum number of log files of the same type. The default value is 200.,The value range for log files is[3, 500], for security files is [1, 3],and for operation files is [1, 7].
        attribute :logfile_max_num

        # @return [4, 8, 16, 32, nil] Maximum size (in MB) of a log file. The default value is 32.,The value range for log files is [4, 8, 16, 32], for security files is [1, 4],,and for operation files is [1, 4].
        attribute :logfile_max_size
        validates :logfile_max_size, expression_inclusion: {:in=>[4, 8, 16, 32], :message=>"%{value} needs to be 4, 8, 16, 32"}, allow_nil: true

        # @return [Object, nil] Number for channel. The value is an integer ranging from 0 to 9. The default value is 0.
        attribute :channel_id

        # @return [String, nil] Channel name.The value is a string of 1 to 30 case-sensitive characters. The default value is console.
        attribute :channel_cfg_name
        validates :channel_cfg_name, type: String

        # @return [:console, :monitor, :trapbuffer, :logbuffer, :snmp, :logfile, nil] Direction of information output.
        attribute :channel_out_direct
        validates :channel_out_direct, expression_inclusion: {:in=>[:console, :monitor, :trapbuffer, :logbuffer, :snmp, :logfile], :message=>"%{value} needs to be :console, :monitor, :trapbuffer, :logbuffer, :snmp, :logfile"}, allow_nil: true

        # @return [Object, nil] Feature name of the filtered log. The value is a string of 1 to 31 case-insensitive characters.
        attribute :filter_feature_name

        # @return [Object, nil] Name of the filtered log. The value is a string of 1 to 63 case-sensitive characters.
        attribute :filter_log_name

        # @return [:ipv4, :ipv6, nil] Log server address type, IPv4 or IPv6.
        attribute :ip_type
        validates :ip_type, expression_inclusion: {:in=>[:ipv4, :ipv6], :message=>"%{value} needs to be :ipv4, :ipv6"}, allow_nil: true

        # @return [Object, nil] Log server address, IPv4 or IPv6 type. The value is a string of 0 to 255 characters. The value can be an valid IPv4 or IPv6 address.
        attribute :server_ip

        # @return [Object, nil] Server name. The value is a string of 1 to 255 case-sensitive characters.
        attribute :server_domain

        # @return [:yes, :no, nil] Use the default VPN or not.
        attribute :is_default_vpn
        validates :is_default_vpn, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] VPN name on a log server. The value is a string of 1 to 31 case-sensitive characters. The default value is _public_.
        attribute :vrf_name

        # @return [:emergencies, :alert, :critical, :error, :warning, :notification, :informational, :debugging, nil] Level of logs saved on a log server.
        attribute :level
        validates :level, expression_inclusion: {:in=>[:emergencies, :alert, :critical, :error, :warning, :notification, :informational, :debugging], :message=>"%{value} needs to be :emergencies, :alert, :critical, :error, :warning, :notification, :informational, :debugging"}, allow_nil: true

        # @return [Object, nil] Number of a port sending logs.The value is an integer ranging from 1 to 65535. For UDP, the default value is 514. For TCP, the default value is 601. For TSL, the default value is 6514.
        attribute :server_port

        # @return [:local0, :local1, :local2, :local3, :local4, :local5, :local6, :local7, nil] Log record tool.
        attribute :facility
        validates :facility, expression_inclusion: {:in=>[:local0, :local1, :local2, :local3, :local4, :local5, :local6, :local7], :message=>"%{value} needs to be :local0, :local1, :local2, :local3, :local4, :local5, :local6, :local7"}, allow_nil: true

        # @return [Object, nil] Channel name. The value is a string of 1 to 30 case-sensitive characters.
        attribute :channel_name

        # @return [:UTC, :localtime, nil] Log server timestamp. The value is of the enumerated type and case-sensitive.
        attribute :timestamp
        validates :timestamp, expression_inclusion: {:in=>[:UTC, :localtime], :message=>"%{value} needs to be :UTC, :localtime"}, allow_nil: true

        # @return [:tcp, :udp, nil] Transport mode. The value is of the enumerated type and case-sensitive.
        attribute :transport_mode
        validates :transport_mode, expression_inclusion: {:in=>[:tcp, :udp], :message=>"%{value} needs to be :tcp, :udp"}, allow_nil: true

        # @return [Object, nil] SSL policy name. The value is a string of 1 to 23 case-sensitive characters.
        attribute :ssl_policy_name

        # @return [Object, nil] Log source ip address, IPv4 or IPv6 type. The value is a string of 0 to 255. The value can be an valid IPv4 or IPv6 address.
        attribute :source_ip

        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
