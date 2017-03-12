# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Arista EOS configurations use a simple block indent file syntax for segmenting configuration into sections.  This module provides an implementation for working with eos configuration sections in a deterministic way.  This module works with either CLI or eAPI transports.
      class Eos_config < Base
        # @return [Array<String>, String, nil] The ordered set of commands that should be configured in the section.  The commands must be the exact same commands as found in the device running-config.  Be sure to note the configuration command syntax as some commands are automatically modified by the device config parser.
        attribute :lines
        validates :lines, type: TypeGeneric.new(String)

        # @return [String, nil] The ordered set of parents that uniquely identify the section the commands should be checked against.  If the parents argument is omitted, the commands are checked against the set of top level or global commands.
        attribute :parents
        validates :parents, type: String

        # @return [String, nil] The I(src) argument provides a path to the configuration file to load into the remote system.  The path can either be a full system path to the configuration file if the value starts with / or relative to the root of the implemented role or playbook. This argument is mutually exclusive with the I(lines) and I(parents) arguments.
        attribute :src
        validates :src, type: String

        # @return [String, nil] The ordered set of commands to push on to the command stack if a change needs to be made.  This allows the playbook designer the opportunity to perform configuration commands prior to pushing any changes without affecting how the set of commands are matched against the system.
        attribute :before
        validates :before, type: String

        # @return [Object, nil] The ordered set of commands to append to the end of the command stack if a change needs to be made.  Just like with I(before) this allows the playbook designer to append a set of commands to be executed after the command set.
        attribute :after

        # @return [:line, :strict, :exact, :none, nil] Instructs the module on the way to perform the matching of the set of commands against the current device config.  If match is set to I(line), commands are matched line by line.  If match is set to I(strict), command lines are matched with respect to position.  If match is set to I(exact), command lines must be an equal match.  Finally, if match is set to I(none), the module will not attempt to compare the source configuration with the running configuration on the remote device.
        attribute :match
        validates :match, inclusion: {:in=>[:line, :strict, :exact, :none], :message=>"%{value} needs to be :line, :strict, :exact, :none"}, allow_nil: true

        # @return [:line, :block, :config, nil] Instructs the module on the way to perform the configuration on the device.  If the replace argument is set to I(line) then the modified lines are pushed to the device in configuration mode.  If the replace argument is set to I(block) then the entire command block is pushed to the device in configuration mode if any line is not correct.
        attribute :replace
        validates :replace, inclusion: {:in=>[:line, :block, :config], :message=>"%{value} needs to be :line, :block, :config"}, allow_nil: true

        # @return [Boolean, nil] The force argument instructs the module to not consider the current devices running-config.  When set to true, this will cause the module to push the contents of I(src) into the device without first checking if already configured.,Note this argument should be considered deprecated.  To achieve the equivalent, set the C(match=none) which is idempotent.  This argument will be removed in a future release.
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] This argument will cause the module to create a full backup of the current C(running-config) from the remote device before any changes are made.  The backup file is written to the C(backup) folder in the playbook root directory.  If the directory does not exist, it is created.
        attribute :backup
        validates :backup, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] The module, by default, will connect to the remote device and retrieve the current running-config to use as a base for comparing against the contents of source.  There are times when it is not desirable to have the task get the current running-config for every task in a playbook.  The I(config) argument allows the implementer to pass in the configuration to use as the base config for comparison.
        attribute :config

        # @return [Boolean, nil] The I(defaults) argument will influence how the running-config is collected from the device.  When the value is set to true, the command used to collect the running-config is append with the all keyword.  When the value is set to false, the command is issued without the all keyword
        attribute :defaults
        validates :defaults, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] The C(save) argument instructs the module to save the running-config to startup-config.  This operation is performed after any changes are made to the current running config.  If no changes are made, the configuration is still saved to the startup config.  This option will always cause the module to return changed.
        attribute :save
        validates :save, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
