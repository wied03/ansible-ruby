# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Eos_template < Base
        # @return [String] The path to the config source.  The source can be either a file with config or a template that will be merged during runtime.  By default the task will search for the source file in role or playbook root folder in templates directory.
        attribute :src
        validates :src, presence: true, type: String

        # @return [:yes, :no, nil] The force argument instructs the module to not consider the current devices running-config.  When set to true, this will cause the module to push the contents of I(src) into the device without first checking if already configured.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] By default when the M(eos_template) connects to the remote device to retrieve the configuration it will issue the `show running-config` command.  If this option is set to True then the issued command will be `show running-config all`
        attribute :include_defaults
        validates :include_defaults, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] When this argument is configured true, the module will backup the running-config from the node prior to making any changes. The backup file will be written to backup_{{ hostname }} in the root of the playbook directory.
        attribute :backup
        validates :backup, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] This argument will cause the provided configuration to be replaced on the destination node.   The use of the replace argument will always cause the task to set changed to true and will implies I(force) is true.  This argument is only valid with I(transport) is eapi.
        attribute :replace
        validates :replace, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] The module, by default, will connect to the remote device and retrieve the current running-config to use as a base for comparing against the contents of source.  There are times when it is not desirable to have the task get the current running-config for every task in a playbook.  The I(config) argument allows the implementer to pass in the configuruation to use as the base config for comparision.
        attribute :config
        validates :config, type: String
      end
    end
  end
end
