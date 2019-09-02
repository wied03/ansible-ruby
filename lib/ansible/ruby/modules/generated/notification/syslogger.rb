# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Uses syslog to add log entries to the host.
      # Can specify facility and priority.
      class Syslogger < Base
        # @return [String] This is the message to place in syslog
        attribute :msg
        validates :msg, presence: true, type: String

        # @return [:emerg, :alert, :crit, :err, :warning, :notice, :info, :debug, nil] Set the log priority
        attribute :priority
        validates :priority, expression_inclusion: {:in=>[:emerg, :alert, :crit, :err, :warning, :notice, :info, :debug], :message=>"%{value} needs to be :emerg, :alert, :crit, :err, :warning, :notice, :info, :debug"}, allow_nil: true

        # @return [:kern, :user, :mail, :daemon, :auth, :lpr, :news, :uucp, :cron, :syslog, :local0, :local1, :local2, :local3, :local4, :local5, :local6, :local7, nil] Set the log facility
        attribute :facility
        validates :facility, expression_inclusion: {:in=>[:kern, :user, :mail, :daemon, :auth, :lpr, :news, :uucp, :cron, :syslog, :local0, :local1, :local2, :local3, :local4, :local5, :local6, :local7], :message=>"%{value} needs to be :kern, :user, :mail, :daemon, :auth, :lpr, :news, :uucp, :cron, :syslog, :local0, :local1, :local2, :local3, :local4, :local5, :local6, :local7"}, allow_nil: true

        # @return [:yes, :no, nil] Log the pid in brackets
        attribute :log_pid
        validates :log_pid, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
