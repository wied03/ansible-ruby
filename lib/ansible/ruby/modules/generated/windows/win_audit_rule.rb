# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Used to apply audit rules to files, folders or registry keys.
      # Once applied, it will begin recording the user who performed the operation defined into the Security Log in the Event viewer.
      # The behavior is designed to ignore inherited rules since those cannot be adjusted without first disabling the inheritance behavior. It will still print inherited rules in the output though for debugging purposes.
      class Win_audit_rule < Base
        # @return [String] Path to the file, folder, or registry key.,Registry paths should be in Powershell format, beginning with an abbreviation for the root such as, 'hklm:\software'.
        attribute :path
        validates :path, presence: true, type: String

        # @return [String] The user or group to adjust rules for.
        attribute :user
        validates :user, presence: true, type: String

        # @return [Array<String>, String] Comma separated list of the rights desired. Only required for adding a rule.,If I(path) is a file or directory, rights can be any right under MSDN FileSystemRights U(https://msdn.microsoft.com/en-us/library/system.security.accesscontrol.filesystemrights.aspx).,If I(path) is a registry key, rights can be any right under MSDN RegistryRights U(https://msdn.microsoft.com/en-us/library/system.security.accesscontrol.registryrights.aspx).
        attribute :rights
        validates :rights, presence: true, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] Defines what objects inside of a folder or registry key will inherit the settings.,If you are setting a rule on a file, this value has to be changed to C(none).,For more information on the choices see MSDN PropagationFlags enumeration at U(https://msdn.microsoft.com/en-us/library/system.security.accesscontrol.inheritanceflags.aspx).
        attribute :inheritance_flags
        validates :inheritance_flags, type: TypeGeneric.new(String)

        # @return [:None, :InherityOnly, :NoPropagateInherit, nil] Propagation flag on the audit rules.,This value is ignored when the path type is a file.,For more information on the choices see MSDN PropagationFlags enumeration at U(https://msdn.microsoft.com/en-us/library/system.security.accesscontrol.propagationflags.aspx).
        attribute :propagation_flags
        validates :propagation_flags, inclusion: {:in=>[:None, :InherityOnly, :NoPropagateInherit], :message=>"%{value} needs to be :None, :InherityOnly, :NoPropagateInherit"}, allow_nil: true

        # @return [:Failure, :Success] Defines whether to log on failure, success, or both.,To log both define as comma separated list "Success, Failure".
        attribute :audit_flags
        validates :audit_flags, presence: true, inclusion: {:in=>[:Failure, :Success], :message=>"%{value} needs to be :Failure, :Success"}

        # @return [:absent, :present, nil] Whether the rule should be C(present) or C(absent).,For absent, only I(path), I(user), and I(state) are required.,Specifying C(absent) will remove all rules matching the defined I(user).
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
