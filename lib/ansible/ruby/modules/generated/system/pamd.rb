# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Edit PAM service's type, control, module path and module arguments. In order for a PAM rule to be modified, the type, control and module_path must match an existing rule.  See man(5) pam.d for details.
      class Pamd < Base
        # @return [String] The name generally refers to the PAM service file to change, for example system-auth.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The type of the PAM rule being modified.  The type, control and module_path all must match a rule to be modified.
        attribute :type
        validates :type, presence: true, type: String

        # @return [String] The control of the PAM rule being modified.  This may be a complicated control with brackets.  If this is the case, be sure to put "[bracketed controls]" in quotes.  The type, control and module_path all must match a rule to be modified.
        attribute :control
        validates :control, presence: true, type: String

        # @return [String] The module path of the PAM rule being modified.  The type, control and module_path all must match a rule to be modified.
        attribute :module_path
        validates :module_path, presence: true, type: String

        # @return [String, nil] The new type to assign to the new rule.
        attribute :new_type
        validates :new_type, type: String

        # @return [String, nil] The new control to assign to the new rule.
        attribute :new_control
        validates :new_control, type: String

        # @return [String, nil] The new module path to be assigned to the new rule.
        attribute :new_module_path
        validates :new_module_path, type: String

        # @return [Array<String>, String, nil] When state is 'updated', the module_arguments will replace existing module_arguments.  When state is 'args_absent' args matching those listed in module_arguments will be removed.  When state is 'args_present' any args listed in module_arguments are added if missing from the existing rule.  Furthermore, if the module argument takes a value denoted by '=', the value will be changed to that specified in module_arguments.  Note that module_arguments is a list.  Please see the examples for usage.
        attribute :module_arguments
        validates :module_arguments, type: TypeGeneric.new(String)

        # @return [:updated, :before, :after, :args_present, :args_absent, :absent, nil] The default of 'updated' will modify an existing rule if type, control and module_path all match an existing rule.  With 'before', the new rule will be inserted before a rule matching type, control and module_path.  Similarly, with 'after', the new rule will be inserted after an existing rule matching type, control and module_path.  With either 'before' or 'after' new_type, new_control, and new_module_path must all be specified.  If state is 'args_absent' or 'args_present', new_type, new_control, and new_module_path will be ignored.  State 'absent' will remove the rule.  The 'absent' state was added in version 2.4 and is only available in Ansible versions >= 2.4.
        attribute :state
        validates :state, inclusion: {:in=>[:updated, :before, :after, :args_present, :args_absent, :absent], :message=>"%{value} needs to be :updated, :before, :after, :args_present, :args_absent, :absent"}, allow_nil: true

        # @return [String, nil] This is the path to the PAM service files
        attribute :path
        validates :path, type: String

        # @return [:yes, :no, nil] Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
