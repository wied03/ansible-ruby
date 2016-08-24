# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cron < Base
        # @return [String, nil] Description of a crontab entry or, if env is set, the name of environment variable. Required if state=absent
        attribute :name
        validates :name, type: String

        # @return [String, nil] The specific user whose crontab should be modified.
        attribute :user
        validates :user, type: String

        # @return [String, nil] The command to execute or, if env is set, the value of environment variable. Required if state=present.
        attribute :job
        validates :job, type: String

        # @return [:present, :absent, nil] Whether to ensure the job or environment variable is present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] If specified, uses this file instead of an individual user's crontab. If this is a relative path, it is interpreted with respect to /etc/cron.d. (If it is absolute, it will typically be /etc/crontab). To use the C(cron_file) parameter you must specify the C(user) as well.
        attribute :cron_file
        validates :cron_file, type: String

        # @return [Boolean, nil] If set, create a backup of the crontab before it is modified. The location of the backup is returned in the C(backup_file) variable by this module.
        attribute :backup
        validates :backup, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Minute when the job should run ( 0-59, *, */2, etc )
        attribute :minute
        validates :minute, type: String

        # @return [String, nil] Hour when the job should run ( 0-23, *, */2, etc )
        attribute :hour
        validates :hour, type: String

        # @return [String, nil] Day of the month the job should run ( 1-31, *, */2, etc )
        attribute :day
        validates :day, type: String

        # @return [String, nil] Month of the year the job should run ( 1-12, *, */2, etc )
        attribute :month
        validates :month, type: String

        # @return [String, nil] Day of the week that the job should run ( 0-6 for Sunday-Saturday, *, etc )
        attribute :weekday
        validates :weekday, type: String

        # @return [:yes, :no, nil] If the job should be run at reboot. This option is deprecated. Users should use special_time.
        attribute :reboot
        validates :reboot, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:reboot, :yearly, :annually, :monthly, :weekly, :daily, :hourly, nil] Special time specification nickname.
        attribute :special_time
        validates :special_time, inclusion: {:in=>[:reboot, :yearly, :annually, :monthly, :weekly, :daily, :hourly], :message=>"%{value} needs to be :reboot, :yearly, :annually, :monthly, :weekly, :daily, :hourly"}, allow_nil: true

        # @return [Boolean, nil] If the job should be disabled (commented out) in the crontab. Only has effect if state=present
        attribute :disabled
        validates :disabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:yes, :no, nil] If set, manages a crontab's environment variable. New variables are added on top of crontab. "name" and "value" paramenters are the name and the value of environment variable.
        attribute :env
        validates :env, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Used with C(state=present) and C(env). If specified, the environment variable will be inserted after the declaration of specified environment variable.
        attribute :insertafter
        validates :insertafter, type: String

        # @return [Object, nil] Used with C(state=present) and C(env). If specified, the environment variable will be inserted before the declaration of specified environment variable.
        attribute :insertbefore
      end
    end
  end
end
