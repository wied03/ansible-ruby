# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages remote roles on a BIG-IP. Remote roles are used in situations where user authentication is handled off-box. Local access control to the BIG-IP is controlled by the defined remote role. Where-as authentication (and by extension, assignment to the role) is handled off-box.
      class Bigip_remote_role < Base
        # @return [String] Specifies the name of the remote role.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer, nil] Specifies the order of the line in the file C(/config/bigip/auth/remoterole).,The LDAP and Active Directory servers read this file line by line.,The order of the information is important; therefore, F5 recommends that you set the first line at 1000. This allows you, in the future, to insert lines before the first line.,When creating a new remote role, this parameter is required.
        attribute :line_order
        validates :line_order, type: Integer

        # @return [Array<String>, String, nil] Specifies the user account attributes saved in the group, in the format C(cn=, ou=, dc=).,When creating a new remote role, this parameter is required.
        attribute :attribute_string
        validates :attribute_string, type: TypeGeneric.new(String)

        # @return [String, nil] Enables or disables remote access for the specified group of remotely authenticated users.,When creating a new remote role, if this parameter is not specified, the default is C(yes).
        attribute :remote_access
        validates :remote_access, type: String

        # @return [String, nil] Specifies the authorization (level of access) for the account.,When creating a new remote role, if this parameter is not provided, the default is C(none).,The C(partition_access) parameter controls which partitions the account can access.,The chosen role may affect the partitions that one is allowed to specify. Specifically, roles such as C(administrator), C(auditor) and C(resource-administrator) required a C(partition_access) of C(all).,A set of pre-existing roles ship with the system. They are C(none), C(guest), C(operator), C(application-editor), C(manager), C(certificate-manager), C(irule-manager), C(user-manager), C(resource-administrator), C(auditor), C(administrator), C(firewall-manager).
        attribute :assigned_role
        validates :assigned_role, type: String

        # @return [String, nil] Specifies the accessible partitions for the account.,This parameter supports the reserved names C(all) and C(Common), as well as specific partitions a user may access.,Users who have access to a partition can operate on objects in that partition, as determined by the permissions conferred by the user's C(assigned_role).,When creating a new remote role, if this parameter is not specified, the default is C(all).
        attribute :partition_access
        validates :partition_access, type: String

        # @return [String, nil] Specifies terminal-based accessibility for remote accounts not already explicitly assigned a user role.,Common values for this include C(tmsh) and C(none), however custom values may also be specified.,When creating a new remote role, if this parameter is not specified, the default is C(none).
        attribute :terminal_access
        validates :terminal_access, type: String

        # @return [:absent, :present, nil] When C(present), guarantees that the remote role exists.,When C(absent), removes the remote role from the system.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
