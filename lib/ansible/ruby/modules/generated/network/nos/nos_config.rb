# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Extreme NOS configurations use a simple block indent file syntax for segmenting configuration into sections. This module provides an implementation for working with NOS configuration sections in a deterministic way.
      class Nos_config < Base
        # @return [Array<String>, String, nil] The ordered set of commands that should be configured in the section. The commands must be the exact same commands as found in the device running-config. Be sure to note the configuration command syntax as some commands are automatically modified by the device config parser.
        attribute :lines
        validates :lines, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] The ordered set of parents that uniquely identify the section or hierarchy the commands should be checked against. If the parents argument is omitted, the commands are checked against the set of top level or global commands.
        attribute :parents
        validates :parents, type: TypeGeneric.new(String)

        # @return [Object, nil] Specifies the source path to the file that contains the configuration or configuration template to load. The path to the source file can either be the full path on the Ansible control host or a relative path from the playbook or role root directory. This argument is mutually exclusive with I(lines), I(parents).
        attribute :src

        # @return [String, nil] The ordered set of commands to push on to the command stack if a change needs to be made. This allows the playbook designer the opportunity to perform configuration commands prior to pushing any changes without affecting how the set of commands are matched against the system.
        attribute :before
        validates :before, type: String

        # @return [Object, nil] The ordered set of commands to append to the end of the command stack if a change needs to be made. Just like with I(before) this allows the playbook designer to append a set of commands to be executed after the command set.
        attribute :after

        # @return [:line, :strict, :exact, :none, nil] Instructs the module on the way to perform the matching of the set of commands against the current device config. If match is set to I(line), commands are matched line by line. If match is set to I(strict), command lines are matched with respect to position. If match is set to I(exact), command lines must be an equal match. Finally, if match is set to I(none), the module will not attempt to compare the source configuration with the running configuration on the remote device.
        attribute :match
        validates :match, expression_inclusion: {:in=>[:line, :strict, :exact, :none], :message=>"%{value} needs to be :line, :strict, :exact, :none"}, allow_nil: true

        # @return [:line, :block, nil] Instructs the module on the way to perform the configuration on the device. If the replace argument is set to I(line) then the modified lines are pushed to the device in configuration mode. If the replace argument is set to I(block) then the entire command block is pushed to the device in configuration mode if any line is not correct.
        attribute :replace
        validates :replace, expression_inclusion: {:in=>[:line, :block], :message=>"%{value} needs to be :line, :block"}, allow_nil: true

        # @return [String, nil] This argument is used when pushing a multiline configuration element to the NOS device. It specifies the character to use as the delimiting character. This only applies to the configuration action.
        attribute :multiline_delimiter
        validates :multiline_delimiter, type: String

        # @return [Symbol, nil] This argument will cause the module to create a full backup of the current C(running-config) from the remote device before any changes are made. The backup file is written to the C(backup) folder in the playbook root directory. If the directory does not exist, it is created.
        attribute :backup
        validates :backup, type: Symbol

        # @return [Object, nil] The module, by default, will connect to the remote device and retrieve the current running-config to use as a base for comparing against the contents of source. There are times when it is not desirable to have the task get the current running-config for every task in a playbook. The I(running_config) argument allows the implementer to pass in the configuration to use as the base config for comparison.
        attribute :running_config

        # @return [:running, :intended, nil] When using the C(ansible-playbook --diff) command line argument the module can generate diffs against different sources.,When this option is configured as I(intended), the module will return the diff of the running-config against the configuration provided in the C(intended_config) argument.,When this option is configured as I(running), the module will return the before and after diff of the running-config with respect to any changes made to the device configuration.
        attribute :diff_against
        validates :diff_against, expression_inclusion: {:in=>[:running, :intended], :message=>"%{value} needs to be :running, :intended"}, allow_nil: true

        # @return [Object, nil] Use this argument to specify one or more lines that should be ignored during the diff. This is used for lines in the configuration that are automatically updated by the system. This argument takes a list of regular expressions or exact line matches.
        attribute :diff_ignore_lines

        # @return [String, nil] The C(intended_config) provides the master configuration that the node should conform to and is used to check the final running-config against. This argument will not modify any settings on the remote device and is strictly used to check the compliance of the current device's configuration against. When specifying this argument, the task should also modify the C(diff_against) value and set it to I(intended).
        attribute :intended_config
        validates :intended_config, type: String
      end
    end
  end
end
