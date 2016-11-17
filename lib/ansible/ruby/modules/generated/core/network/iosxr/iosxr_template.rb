# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages network device configurations over SSH.  This module allows implementers to work with the device running-config.  It provides a way to push a set of commands onto a network device by evaluating the current running-config and only pushing configuration commands that are not already configured.  The config source can be a set of commands or a template.
      class Iosxr_template < Base
        # @return [String, nil] The path to the config source.  The source can be either a file with config or a template that will be merged during runtime.  By default the task will first search for the source file in role or playbook root folder in templates unless a full path to the file is given.
        attribute :src
        validates :src, type: String

        # @return [Boolean, nil] The force argument instructs the module not to consider the current device running-config.  When set to true, this will cause the module to push the contents of I(src) into the device without first checking if already configured.
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] When this argument is configured true, the module will backup the running-config from the node prior to making any changes. The backup file will be written to backup_{{ hostname }} in the root of the playbook directory.
        attribute :backup
        validates :backup, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The module, by default, will connect to the remote device and retrieve the current running-config to use as a base for comparing against the contents of source.  There are times when it is not desirable to have the task get the current running-config for every task.  The I(config) argument allows the implementer to pass in the configuration to use as the base config for comparison.
        attribute :config
        validates :config, type: String
      end
    end
  end
end
