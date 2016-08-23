# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Nxos_template < Base
        # @return [String] The path to the config source.  The source can be either a file with config or a template that will be merged during runtime.  By default the task will search for the source file in role or playbook root folder in templates directory.
        attribute :src
        validates :src, type: String

        # @return [TrueClass] The force argument instructs the module to not consider the current devices running-config.  When set to true, this will cause the module to push the contents of I(src) into the device without first checking if already configured.
        attribute :force
        validates :force, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [Object] The module, by default, will collect the current device running-config to use as a base for comparision to the commands in I(src).  Setting this value to true will cause the module to issue the command `show running-config all` to include all device settings.
        attribute :include_defaults
        validates :include_defaults, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [Object] When this argument is configured true, the module will backup the running-config from the node prior to making any changes. The backup file will be written to backup_{{ hostname }} in the root of the playbook directory.
        attribute :backup
        validates :backup, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [String] The module, by default, will connect to the remote device and retrieve the current running-config to use as a base for comparing against the contents of source.  There are times when it is not desirable to have the task get the current running-config for every task in a playbook.  The I(config) argument allows the implementer to pass in the configuruation to use as the base config for comparision.
        attribute :config
        validates :config, type: String
      end
    end
  end
end
