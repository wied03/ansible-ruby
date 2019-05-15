# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove rights/permissions for a given user or group for the specified file, folder, registry key or AppPool identifies.
      # If adding ACL's for AppPool identities (available since 2.3), the Windows Feature "Web-Scripting-Tools" must be enabled.
      class Win_acl < Base
        # @return [String] The path to the file or directory.
        attribute :path
        validates :path, presence: true, type: String

        # @return [String] User or Group to add specified rights to act on src file/folder or registry key.
        attribute :user
        validates :user, presence: true, type: String

        # @return [:absent, :present, nil] Specify whether to add C(present) or remove C(absent) the specified access rule.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:allow, :deny] Specify whether to allow or deny the rights specified.
        attribute :type
        validates :type, presence: true, inclusion: {:in=>[:allow, :deny], :message=>"%{value} needs to be :allow, :deny"}

        # @return [Array<String>, String] The rights/permissions that are to be allowed/denied for the specified user or group for the item at C(path).,If C(path) is a file or directory, rights can be any right under MSDN FileSystemRights U(https://msdn.microsoft.com/en-us/library/system.security.accesscontrol.filesystemrights.aspx).,If C(path) is a registry key, rights can be any right under MSDN RegistryRights U(https://msdn.microsoft.com/en-us/library/system.security.accesscontrol.registryrights.aspx).
        attribute :rights
        validates :rights, presence: true, type: TypeGeneric.new(String)

        # @return [:ContainerInherit, :ObjectInherit, nil] Inherit flags on the ACL rules.,Can be specified as a comma separated list, e.g. C(ContainerInherit), C(ObjectInherit).,For more information on the choices see MSDN InheritanceFlags enumeration at U(https://msdn.microsoft.com/en-us/library/system.security.accesscontrol.inheritanceflags.aspx).,Defaults to C(ContainerInherit, ObjectInherit) for Directories.
        attribute :inherit
        validates :inherit, inclusion: {:in=>[:ContainerInherit, :ObjectInherit], :message=>"%{value} needs to be :ContainerInherit, :ObjectInherit"}, allow_nil: true

        # @return [:InheritOnly, :None, :NoPropagateInherit, nil] Propagation flag on the ACL rules.,For more information on the choices see MSDN PropagationFlags enumeration at U(https://msdn.microsoft.com/en-us/library/system.security.accesscontrol.propagationflags.aspx).
        attribute :propagation
        validates :propagation, inclusion: {:in=>[:InheritOnly, :None, :NoPropagateInherit], :message=>"%{value} needs to be :InheritOnly, :None, :NoPropagateInherit"}, allow_nil: true
      end
    end
  end
end
