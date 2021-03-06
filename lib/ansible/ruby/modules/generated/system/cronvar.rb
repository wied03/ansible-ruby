# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Use this module to manage crontab variables. This module allows you to create, update, or delete cron variable definitions.
      class Cronvar < Base
        # @return [String] Name of the crontab variable.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The value to set this variable to.,Required if C(state=present).
        attribute :value
        validates :value, type: String

        # @return [Object, nil] If specified, the variable will be inserted after the variable specified.,Used with C(state=present).
        attribute :insertafter

        # @return [Object, nil] Used with C(state=present). If specified, the variable will be inserted just before the variable specified.
        attribute :insertbefore

        # @return [:absent, :present, nil] Whether to ensure that the variable is present or absent.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] The specific user whose crontab should be modified.
        attribute :user
        validates :user, type: String

        # @return [String, nil] If specified, uses this file instead of an individual user's crontab. Without a leading /, this is assumed to be in /etc/cron.d.  With a leading /, this is taken as absolute.
        attribute :cron_file
        validates :cron_file, type: String

        # @return [:yes, :no, nil] If set, create a backup of the crontab before it is modified. The location of the backup is returned in the C(backup) variable by this module.
        attribute :backup
        validates :backup, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
