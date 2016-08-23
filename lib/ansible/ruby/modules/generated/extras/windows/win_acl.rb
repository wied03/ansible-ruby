# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_acl < Base
        # @return [String] File or Directory
        attribute :path
        validates :path, presence: true, type: String

        # @return [String] User or Group to add specified rights to act on src file/folder
        attribute :user
        validates :user, presence: true, type: String

        # @return [String] Specify whether to add C(present) or remove C(absent) the specified access rule
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Specify whether to allow or deny the rights specified
        attribute :type
        validates :type, presence: true, inclusion: {:in=>[:allow, :deny], :message=>"%{value} needs to be :allow, :deny"}

        # @return [String] The rights/permissions that are to be allowed/denyed for the specified user or group for the given src file or directory.  Can be entered as a comma separated list (Ex. "Modify, Delete, ExecuteFile").  For more information on the choices see MSDN FileSystemRights Enumeration.
        attribute :rights
        validates :rights, presence: true, inclusion: {:in=>[:AppendData, :ChangePermissions, :Delete, :DeleteSubdirectoriesAndFiles, :ExecuteFile, :FullControl, :ListDirectory, :Modify, :Read, :ReadAndExecute, :ReadAttributes, :ReadData, :ReadExtendedAttributes, :ReadPermissions, :Synchronize, :TakeOwnership, :Traverse, :Write, :WriteAttributes, :WriteData, :WriteExtendedAttributes], :message=>"%{value} needs to be :AppendData, :ChangePermissions, :Delete, :DeleteSubdirectoriesAndFiles, :ExecuteFile, :FullControl, :ListDirectory, :Modify, :Read, :ReadAndExecute, :ReadAttributes, :ReadData, :ReadExtendedAttributes, :ReadPermissions, :Synchronize, :TakeOwnership, :Traverse, :Write, :WriteAttributes, :WriteData, :WriteExtendedAttributes"}

        # @return [Array<String>] Inherit flags on the ACL rules.  Can be specified as a comma separated list (Ex. "ContainerInherit, ObjectInherit").  For more information on the choices see MSDN InheritanceFlags Enumeration.
        attribute :inherit, flat_array: true
        validates :inherit, inclusion: {:in=>[:ContainerInherit, :ObjectInherit, :None], :message=>"%{value} needs to be :ContainerInherit, :ObjectInherit, :None"}, allow_nil: true

        # @return [String] Propagation flag on the ACL rules.  For more information on the choices see MSDN PropagationFlags Enumeration.
        attribute :propagation
        validates :propagation, inclusion: {:in=>[:None, :NoPropagateInherit, :InheritOnly], :message=>"%{value} needs to be :None, :NoPropagateInherit, :InheritOnly"}, allow_nil: true
      end
    end
  end
end