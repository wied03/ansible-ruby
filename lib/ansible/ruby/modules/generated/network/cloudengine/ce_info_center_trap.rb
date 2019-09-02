# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages information center trap configurations on HUAWEI CloudEngine switches.
      class Ce_info_center_trap < Base
        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:date_boot, :date_second, :date_tenthsecond, :date_millisecond, :shortdate_second, :shortdate_tenthsecond, :shortdate_millisecond, :formatdate_second, :formatdate_tenthsecond, :formatdate_millisecond, nil] Timestamp format of alarm information.
        attribute :trap_time_stamp
        validates :trap_time_stamp, expression_inclusion: {:in=>[:date_boot, :date_second, :date_tenthsecond, :date_millisecond, :shortdate_second, :shortdate_tenthsecond, :shortdate_millisecond, :formatdate_second, :formatdate_tenthsecond, :formatdate_millisecond], :message=>"%{value} needs to be :date_boot, :date_second, :date_tenthsecond, :date_millisecond, :shortdate_second, :shortdate_tenthsecond, :shortdate_millisecond, :formatdate_second, :formatdate_tenthsecond, :formatdate_millisecond"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] Whether a trap buffer is enabled to output information.
        attribute :trap_buff_enable
        validates :trap_buff_enable, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] Size of a trap buffer. The value is an integer ranging from 0 to 1024. The default value is 256.
        attribute :trap_buff_size

        # @return [Object, nil] Module name of the rule. The value is a string of 1 to 31 case-insensitive characters. The default value is default. Please use lower-case letter, such as [aaa, acl, arp, bfd].
        attribute :module_name

        # @return [Object, nil] Number of a channel. The value is an integer ranging from 0 to 9. The default value is 0.
        attribute :channel_id

        # @return [:no_use, :true, :false, nil] Whether a device is enabled to output alarms.
        attribute :trap_enable
        validates :trap_enable, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:emergencies, :alert, :critical, :error, :warning, :notification, :informational, :debugging, nil] Trap level permitted to output.
        attribute :trap_level
        validates :trap_level, expression_inclusion: {:in=>[:emergencies, :alert, :critical, :error, :warning, :notification, :informational, :debugging], :message=>"%{value} needs to be :emergencies, :alert, :critical, :error, :warning, :notification, :informational, :debugging"}, allow_nil: true
      end
    end
  end
end
