# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cronvar < Base
        # @return [String] Name of the crontab variable.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The value to set this variable to.  Required if state=present.
        attribute :value
        validates :value, type: String

        # @return [Object] Used with C(state=present). If specified, the variable will be inserted after the variable specified.
        attribute :insertafter

        # @return [Object] Used with C(state=present). If specified, the variable will be inserted just before the variable specified.
        attribute :insertbefore

        # @return [String] Whether to ensure that the variable is present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The specific user whose crontab should be modified.
        attribute :user
        validates :user, type: String

        # @return [String] If specified, uses this file instead of an individual user's crontab. Without a leading /, this is assumed to be in /etc/cron.d.  With a leading /, this is taken as absolute.
        attribute :cron_file
        validates :cron_file, type: String

        # @return [Object] If set, create a backup of the crontab before it is modified. The location of the backup is returned in the C(backup) variable by this module.
        attribute :backup
      end
    end
  end
end
