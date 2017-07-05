# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Cisco ASA configurations use a simple block indent file syntax for segmenting configuration into sections.  This module provides an implementation for working with ASA configuration sections in a deterministic way.
      class Asa_config < Base
        # @return [Array<String>, String, nil] The ordered set of commands that should be configured in the section.  The commands must be the exact same commands as found in the device running-config.  Be sure to note the configuration command syntax as some commands are automatically modified by the device config parser.
        attribute :lines
        validates :lines, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] The ordered set of parents that uniquely identify the section the commands should be checked against.  If the parents argument is omitted, the commands are checked against the set of top level or global commands.
        attribute :parents
        validates :parents, type: TypeGeneric.new(String)

        # @return [Object, nil] Specifies the source path to the file that contains the configuration or configuration template to load.  The path to the source file can either be the full path on the Ansible control host or a relative path from the playbook or role root directory.  This argument is mutually exclusive with I(lines).
        attribute :src

        # @return [Object, nil] The ordered set of commands to push on to the command stack if a change needs to be made.  This allows the playbook designer the opportunity to perform configuration commands prior to pushing any changes without affecting how the set of commands are matched against the system
        attribute :before

        # @return [Object, nil] The ordered set of commands to append to the end of the command stack if a change needs to be made.  Just like with I(before) this allows the playbook designer to append a set of commands to be executed after the command set.
        attribute :after

        # @return [:line, :strict, :exact, :none, nil] Instructs the module on the way to perform the matching of the set of commands against the current device config.  If match is set to I(line), commands are matched line by line.  If match is set to I(strict), command lines are matched with respect to position.  If match is set to I(exact), command lines must be an equal match.  Finally, if match is set to I(none), the module will not attempt to compare the source configuration with the running configuration on the remote device.
        attribute :match
        validates :match, inclusion: {:in=>[:line, :strict, :exact, :none], :message=>"%{value} needs to be :line, :strict, :exact, :none"}, allow_nil: true

        # @return [:line, :block, nil] Instructs the module on the way to perform the configuration on the device.  If the replace argument is set to I(line) then the modified lines are pushed to the device in configuration mode.  If the replace argument is set to I(block) then the entire command block is pushed to the device in configuration mode if any line is not correct
        attribute :replace
        validates :replace, inclusion: {:in=>[:line, :block], :message=>"%{value} needs to be :line, :block"}, allow_nil: true

        # @return [:merge, :check, nil] The I(update) argument controls how the configuration statements are processed on the remote device.  Valid choices for the I(update) argument are I(merge) and I(check).  When the argument is set to I(merge), the configuration changes are merged with the current device running configuration.  When the argument is set to I(check) the configuration updates are determined but not actually configured on the remote device.
        attribute :update
        validates :update, inclusion: {:in=>[:merge, :check], :message=>"%{value} needs to be :merge, :check"}, allow_nil: true

        # @return [:merge, :check, nil] This argument specifies the update method to use when applying the configuration changes to the remote node.  If the value is set to I(merge) the configuration updates are merged with the running- config.  If the value is set to I(check), no changes are made to the remote host.
        attribute :commit
        validates :commit, inclusion: {:in=>[:merge, :check], :message=>"%{value} needs to be :merge, :check"}, allow_nil: true

        # @return [Boolean, nil] This argument will cause the module to create a full backup of the current C(running-config) from the remote device before any changes are made.  The backup file is written to the C(backup) folder in the playbook root directory.  If the directory does not exist, it is created.
        attribute :backup
        validates :backup, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] The C(config) argument allows the playbook designer to supply the base configuration to be used to validate configuration changes necessary.  If this argument is provided, the module will not download the running-config from the remote node.
        attribute :config

        # @return [Boolean, nil] This argument specifies whether or not to collect all defaults when getting the remote device running config.  When enabled, the module will get the current config by issuing the command C(show running-config all).
        attribute :defaults
        validates :defaults, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] This argument specifies to include passwords in the config when retrieving the running-config from the remote device.  This includes passwords related to VPN endpoints.  This argument is mutually exclusive with I(defaults).
        attribute :passwords
        validates :passwords, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] The C(save) argument instructs the module to save the running- config to the startup-config at the conclusion of the module running.  If check mode is specified, this argument is ignored.
        attribute :save
        validates :save, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
