# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # AireOS does not use a block indent file syntax, so there are no sections or parents. This module provides an implementation for working with AireOS configurations in a deterministic way.
      class Aireos_config < Base
        # @return [Array<String>, String, nil] The ordered set of commands that should be configured. The commands must be the exact same commands as found in the device run-config.  Be sure to note the configuration command syntax as some commands are automatically modified by the device config parser.
        attribute :lines
        validates :lines, type: TypeGeneric.new(String)

        # @return [Object, nil] Specifies the source path to the file that contains the configuration or configuration template to load.  The path to the source file can either be the full path on the Ansible control host or a relative path from the playbook or role root directory.  This argument is mutually exclusive with I(lines).
        attribute :src

        # @return [String, nil] The ordered set of commands to push on to the command stack if a change needs to be made.  This allows the playbook designer the opportunity to perform configuration commands prior to pushing any changes without affecting how the set of commands are matched against the system.
        attribute :before
        validates :before, type: String

        # @return [Object, nil] The ordered set of commands to append to the end of the command stack if a change needs to be made.  Just like with I(before) this allows the playbook designer to append a set of commands to be executed after the command set.
        attribute :after

        # @return [:line, :none, nil] Instructs the module on the way to perform the matching of the set of commands against the current device config.  If match is set to I(line), commands are matched line by line. If match is set to I(none), the module will not attempt to compare the source configuration with the running configuration on the remote device.
        attribute :match
        validates :match, expression_inclusion: {:in=>[:line, :none], :message=>"%{value} needs to be :line, :none"}, allow_nil: true

        # @return [:yes, :no, nil] This argument will cause the module to create a full backup of the current C(running-config) from the remote device before any changes are made.  The backup file is written to the C(backup) folder in the playbook root directory.  If the directory does not exist, it is created.
        attribute :backup
        validates :backup, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] The module, by default, will connect to the remote device and retrieve the current running-config to use as a base for comparing against the contents of source.  There are times when it is not desirable to have the task get the current running-config for every task in a playbook.  The I(running_config) argument allows the implementer to pass in the configuration to use as the base config for comparison.
        attribute :running_config

        # @return [:yes, :no, nil] The C(save) argument instructs the module to save the running-config to startup-config.  This operation is performed after any changes are made to the current running config.  If no changes are made, the configuration is still saved to the startup config.  This option will always cause the module to return changed. This argument is mutually exclusive with I(save_when).,This option is deprecated as of Ansible 2.7, use C(save_when)
        attribute :save
        validates :save, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:always, :never, :changed, nil] When changes are made to the device running-configuration, the changes are not copied to non-volatile storage by default.  Using this argument will change that.  If the argument is set to I(always), then the running-config will always be copied to the startup-config and the module will always return as changed. If the argument is set to I(never), the running-config will never be copied to the startup-config.  If the argument is set to I(changed), then the running-config will only be copied to the startup-config if the task has made a change.
        attribute :save_when
        validates :save_when, expression_inclusion: {:in=>[:always, :never, :changed], :message=>"%{value} needs to be :always, :never, :changed"}, allow_nil: true

        # @return [:intended, :running, nil] When using the C(ansible-playbook --diff) command line argument the module can generate diffs against different sources.,When this option is configured as I(intended), the module will return the diff of the running-config against the configuration provided in the C(intended_config) argument.,When this option is configured as I(running), the module will return the before and after diff of the running-config with respect to any changes made to the device configuration.
        attribute :diff_against
        validates :diff_against, expression_inclusion: {:in=>[:intended, :running], :message=>"%{value} needs to be :intended, :running"}, allow_nil: true

        # @return [Object, nil] Use this argument to specify one or more lines that should be ignored during the diff.  This is used for lines in the configuration that are automatically updated by the system.  This argument takes a list of regular expressions or exact line matches.
        attribute :diff_ignore_lines

        # @return [Object, nil] The C(intended_config) provides the master configuration that the node should conform to and is used to check the final running-config against.   This argument will not modify any settings on the remote device and is strictly used to check the compliance of the current device's configuration against.  When specifying this argument, the task should also modify the C(diff_against) value and set it to I(intended).
        attribute :intended_config
      end
    end
  end
end
