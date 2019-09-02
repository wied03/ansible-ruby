# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates, modifies or removes groups in Active Directory.
      # For local groups, use the M(win_group) module instead.
      class Win_domain_group < Base
        # @return [Hash, nil] A dict of custom LDAP attributes to set on the group.,This can be used to set custom attributes that are not exposed as module parameters, e.g. C(mail).,See the examples on how to format this parameter.
        attribute :attributes
        validates :attributes, type: Hash

        # @return [:distribution, :security, nil] The category of the group, this is the value to assign to the LDAP C(groupType) attribute.,If a new group is created then C(security) will be used by default.
        attribute :category
        validates :category, expression_inclusion: {:in=>[:distribution, :security], :message=>"%{value} needs to be :distribution, :security"}, allow_nil: true

        # @return [Object, nil] The value to be assigned to the LDAP C(description) attribute.
        attribute :description

        # @return [Object, nil] The value to assign to the LDAP C(displayName) attribute.
        attribute :display_name

        # @return [String, nil] The username to use when interacting with AD.,If this is not set then the user Ansible used to log in with will be used instead.
        attribute :domain_username
        validates :domain_username, type: String

        # @return [String, nil] The password for C(username).
        attribute :domain_password
        validates :domain_password, type: String

        # @return [String, nil] Specifies the Active Directory Domain Services instance to connect to.,Can be in the form of an FQDN or NetBIOS name.,If not specified then the value is based on the domain of the computer running PowerShell.
        attribute :domain_server
        validates :domain_server, type: String

        # @return [:yes, :no, nil] Will ignore the C(ProtectedFromAccidentalDeletion) flag when deleting or moving a group.,The module will fail if one of these actions need to occur and this value is set to C(no).
        attribute :ignore_protection
        validates :ignore_protection, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] The value to be assigned to the LDAP C(managedBy) attribute.,This value can be in the forms C(Distinguished Name), C(objectGUID), C(objectSid) or C(sAMAccountName), see examples for more details.
        attribute :managed_by
        validates :managed_by, type: String

        # @return [Array<String>, String] The name of the group to create, modify or remove.,This value can be in the forms C(Distinguished Name), C(objectGUID), C(objectSid) or C(sAMAccountName), see examples for more details.
        attribute :name
        validates :name, presence: true, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] The full LDAP path to create or move the group to.,This should be the path to the parent object to create or move the group to.,See examples for details of how this path is formed.
        attribute :organizational_unit
        validates :organizational_unit, type: TypeGeneric.new(String)

        # @return [Symbol, nil] Will set the C(ProtectedFromAccidentalDeletion) flag based on this value.,This flag stops a user from deleting or moving a group to a different path.
        attribute :protect
        validates :protect, type: Symbol

        # @return [:domainlocal, :global, :universal, nil] The scope of the group.,If C(state=present) and the group doesn't exist then this must be set.
        attribute :scope
        validates :scope, expression_inclusion: {:in=>[:domainlocal, :global, :universal], :message=>"%{value} needs to be :domainlocal, :global, :universal"}, allow_nil: true

        # @return [:absent, :present, nil] If C(state=present) this module will ensure the group is created and is configured accordingly.,If C(state=absent) this module will delete the group if it exists
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
