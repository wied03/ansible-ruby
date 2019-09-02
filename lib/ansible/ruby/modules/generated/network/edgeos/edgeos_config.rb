# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides configuration file management of EdgeOS devices. It provides arguments for managing both the configuration file and state of the active configuration. All configuration statements are based on `set` and `delete` commands in the device configuration.
      # This is a network module and requires the C(connection: network_cli) in order to work properly.
      # For more information please see the L(Network Guide,../network/getting_started/index.html).
      class Edgeos_config < Base
        # @return [Array<String>, String, nil] The ordered set of configuration lines to be managed and compared with the existing configuration on the remote device.
        attribute :lines
        validates :lines, type: TypeGeneric.new(String)

        # @return [String, nil] The C(src) argument specifies the path to the source config file to load. The source config file can either be in bracket format or set format. The source file can include Jinja2 template variables.
        attribute :src
        validates :src, type: String

        # @return [:line, :none, nil] The C(match) argument controls the method used to match against the current active configuration. By default, the desired config is matched against the active config and the deltas are loaded. If the C(match) argument is set to C(none) the active configuration is ignored and the configuration is always loaded.
        attribute :match
        validates :match, expression_inclusion: {:in=>[:line, :none], :message=>"%{value} needs to be :line, :none"}, allow_nil: true

        # @return [:yes, :no, nil] The C(backup) argument will backup the current device's active configuration to the Ansible control host prior to making any changes. The backup file will be located in the backup folder in the playbook root directory or role root directory if the playbook is part of an ansible role. If the directory does not exist, it is created.
        attribute :backup
        validates :backup, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Allows a commit description to be specified to be included when the configuration is committed. If the configuration is not changed or committed, this argument is ignored.
        attribute :comment
        validates :comment, type: String

        # @return [Object, nil] The C(config) argument specifies the base configuration to use to compare against the desired configuration. If this value is not specified, the module will automatically retrieve the current active configuration from the remote device.
        attribute :config

        # @return [:yes, :no, nil] The C(save) argument controls whether or not changes made to the active configuration are saved to disk. This is independent of committing the config. When set to C(True), the active configuration is saved.
        attribute :save
        validates :save, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
