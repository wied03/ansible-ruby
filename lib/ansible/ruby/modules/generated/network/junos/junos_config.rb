# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides an implementation for working with the active configuration running on Juniper JUNOS devices.  It provides a set of arguments for loading configuration, performing rollback operations and zeroing the active configuration on the device.
      class Junos_config < Base
        # @return [Object, nil] This argument takes a list of C(set) or C(delete) configuration lines to push into the remote device.  Each line must start with either C(set) or C(delete).  This argument is mutually exclusive with the I(src) argument.
        attribute :lines

        # @return [String, nil] The I(src) argument provides a path to the configuration file to load into the remote system.  The path can either be a full system path to the configuration file if the value starts with / or relative to the root of the implemented role or playbook. This argument is mutually exclusive with the I(lines) argument.
        attribute :src
        validates :src, type: String

        # @return [:xml, :set, :text, :json, nil] The I(src_format) argument specifies the format of the configuration found int I(src).  If the I(src_format) argument is not provided, the module will attempt to determine the format of the configuration file specified in I(src).
        attribute :src_format
        validates :src_format, inclusion: {:in=>[:xml, :set, :text, :json], :message=>"%{value} needs to be :xml, :set, :text, :json"}, allow_nil: true

        # @return [Integer, nil] The C(rollback) argument instructs the module to rollback the current configuration to the identifier specified in the argument.  If the specified rollback identifier does not exist on the remote device, the module will fail.  To rollback to the most recent commit, set the C(rollback) argument to 0.
        attribute :rollback
        validates :rollback, type: Integer

        # @return [Boolean, nil] The C(zeroize) argument is used to completely sanitize the remote device configuration back to initial defaults.  This argument will effectively remove all current configuration statements on the remote device.
        attribute :zeroize
        validates :zeroize, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] The C(confirm) argument will configure a time out value for the commit to be confirmed before it is automatically rolled back.  If the C(confirm) argument is set to False, this argument is silently ignored.  If the value for this argument is set to 0, the commit is confirmed immediately.
        attribute :confirm
        validates :confirm, type: Integer

        # @return [String, nil] The C(comment) argument specifies a text string to be used when committing the configuration.  If the C(confirm) argument is set to False, this argument is silently ignored.
        attribute :comment
        validates :comment, type: String

        # @return [Boolean, nil] The C(replace) argument will instruct the remote device to replace the current configuration hierarchy with the one specified in the corresponding hierarchy of the source configuration loaded from this module.,Note this argument should be considered deprecated.  To achieve the equivalent, set the I(update) argument to C(replace). This argument will be removed in a future release. The C(replace) and C(update) argument is mutually exclusive.
        attribute :replace
        validates :replace, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] This argument will cause the module to create a full backup of the current C(running-config) from the remote device before any changes are made.  The backup file is written to the C(backup) folder in the playbook root directory.  If the directory does not exist, it is created.
        attribute :backup
        validates :backup, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:merge, :override, :replace, nil] This argument will decide how to load the configuration data particulary when the candidate configuration and loaded configuration contain conflicting statements. Following are accepted values. C(merge) combines the data in the loaded configuration with the candidate configuration. If statements in the loaded configuration conflict with statements in the candidate configuration, the loaded statements replace the candidate ones. C(override) discards the entire candidate configuration and replaces it with the loaded configuration. C(replace) substitutes each hierarchy level in the loaded configuration for the corresponding level.
        attribute :update
        validates :update, inclusion: {:in=>[:merge, :override, :replace], :message=>"%{value} needs to be :merge, :override, :replace"}, allow_nil: true
      end
    end
  end
end
