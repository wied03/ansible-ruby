# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Setting the Timestamp Format of Logs. Configuring the Device to Output Logs to the Log Buffer.
      class Ce_info_center_log < Base
        # @return [:date_boot, :date_second, :date_tenthsecond, :date_millisecond, :shortdate_second, :shortdate_tenthsecond, :shortdate_millisecond, :formatdate_second, :formatdate_tenthsecond, :formatdate_millisecond, nil] Sets the timestamp format of logs.
        attribute :log_time_stamp
        validates :log_time_stamp, expression_inclusion: {:in=>[:date_boot, :date_second, :date_tenthsecond, :date_millisecond, :shortdate_second, :shortdate_tenthsecond, :shortdate_millisecond, :formatdate_second, :formatdate_tenthsecond, :formatdate_millisecond], :message=>"%{value} needs to be :date_boot, :date_second, :date_tenthsecond, :date_millisecond, :shortdate_second, :shortdate_tenthsecond, :shortdate_millisecond, :formatdate_second, :formatdate_tenthsecond, :formatdate_millisecond"}, allow_nil: true

        # @return [:no_use, :true, :false, nil] Enables the Switch to send logs to the log buffer.
        attribute :log_buff_enable
        validates :log_buff_enable, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [Object, nil] Specifies the maximum number of logs in the log buffer. The value is an integer that ranges from 0 to 10240. If logbuffer-size is 0, logs are not displayed.
        attribute :log_buff_size

        # @return [Object, nil] Specifies the name of a module. The value is a module name in registration logs.
        attribute :module_name

        # @return [Object, nil] Specifies a channel ID. The value is an integer ranging from 0 to 9.
        attribute :channel_id

        # @return [:no_use, :true, :false, nil] Indicates whether log filtering is enabled.
        attribute :log_enable
        validates :log_enable, expression_inclusion: {:in=>[:no_use, :true, :false], :message=>"%{value} needs to be :no_use, :true, :false"}, allow_nil: true

        # @return [:emergencies, :alert, :critical, :error, :warning, :notification, :informational, :debugging, nil] Specifies a log severity.
        attribute :log_level
        validates :log_level, expression_inclusion: {:in=>[:emergencies, :alert, :critical, :error, :warning, :notification, :informational, :debugging], :message=>"%{value} needs to be :emergencies, :alert, :critical, :error, :warning, :notification, :informational, :debugging"}, allow_nil: true

        # @return [:present, :absent, nil] Determines whether the config should be present or not on the device.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
