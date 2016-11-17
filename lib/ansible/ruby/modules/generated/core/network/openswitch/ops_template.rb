# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The OpenSwitch platform provides a library for pushing JSON structured configuration files into the current running-config.  This module will read the current configuration from OpenSwitch and compare it against a provided candidate configuration. If there are changes, the candidate configuration is merged with the current configuration and pushed into OpenSwitch
      class Ops_template < Base
        # @return [String] The path to the config source.  The source can be either a file with config or a template that will be merged during runtime.  By default the task will search for the source file in role or playbook root folder in templates directory.
        attribute :src
        validates :src, presence: true, type: String

        # @return [Boolean, nil] The force argument instructs the module to not consider the current devices running-config.  When set to true, this will cause the module to push the contents of I(src) into the device without first checking if already configured.
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] When this argument is configured true, the module will backup the running-config from the node prior to making any changes. The backup file will be written to backups/ in the root of the playbook directory.
        attribute :backup
        validates :backup, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] The module, by default, will connect to the remote device and retrieve the current running-config to use as a base for comparing against the contents of source.  There are times when it is not desirable to have the task get the current running-config for every task in a playbook.  The I(config) argument allows the implementer to pass in the configuration to use as the base config for comparison.
        attribute :config
      end
    end
  end
end
