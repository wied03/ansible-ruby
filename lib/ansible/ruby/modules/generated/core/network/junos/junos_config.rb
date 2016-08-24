# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Junos_config < Base
        # @return [Array<String>, String, nil] The path to the config source.  The source can be either a file with config or a template that will be merged during runtime.  By default the task will search for the source file in role or playbook root folder in templates directory.
        attribute :lines
        validates :lines, type: TypeGeneric.new(String)

        # @return [Integer, nil] The C(rollback) argument instructs the module to rollback the current configuration to the identifier specified in the argument.  If the specified rollback identifier does not exist on the remote device, the module will fail.  To rollback to the most recent commit, set the C(rollback) argument to 0
        attribute :rollback
        validates :rollback, type: Integer

        # @return [Boolean, nil] The C(zeroize) argument is used to completely ssantaize the remote device configuration back to initial defaults.  This argument will effectively remove all current configuration statements on the remote device
        attribute :zeroize
        validates :zeroize, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] The C(confirm) argument will configure a time out value for the commit to be confirmed before it is automatically rolled back.  If the C(confirm) argument is set to False, this argument is silently ignored.  If the value for this argument is set to 0, the commit is confirmed immediately.
        attribute :confirm
        validates :confirm, type: Integer

        # @return [String, nil] The C(comment) argument specifies a text string to be used when committing the configuration.  If the C(confirm) argument is set to False, this argument is silently ignored.
        attribute :comment
        validates :comment, type: String

        # @return [Boolean] The C(replace) argument will instruct the remote device to replace the current configuration hierarchy with the one specified in the corresponding hierarchy of the source configuraiton loaded from this module.
        attribute :replace
        validates :replace, presence: true, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}
      end
    end
  end
end
