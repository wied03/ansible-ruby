# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configure an E-Series system to allow authentication via an LDAP server
      class Netapp_e_ldap < Base
        # @return [:present, :absent, nil] Enable/disable LDAP support on the system. Disabling will clear out any existing defined domains.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] This is a unique identifier for the configuration (for cases where there are multiple domains configured).,If this is not specified, but I(state=present), we will utilize a default value of 'default'.
        attribute :identifier
        validates :identifier, type: String

        # @return [Object] This is the user account that will be used for querying the LDAP server.,Example: CN=MyBindAcct,OU=ServiceAccounts,DC=example,DC=com
        attribute :username
        validates :username, presence: true

        # @return [Object] This is the password for the bind user account.
        attribute :password
        validates :password, presence: true

        # @return [String, nil] The user attributes that should be considered for the group to role mapping.,Typically this is used with something like 'memberOf', and a user's access is tested against group membership or lack thereof.
        attribute :attributes
        validates :attributes, type: String

        # @return [String] This is the LDAP server url.,The connection string should be specified as using the ldap or ldaps protocol along with the port information.
        attribute :server
        validates :server, presence: true, type: String

        # @return [Object, nil] The domain name[s] that will be utilized when authenticating to identify which domain to utilize.,Default to use the DNS name of the I(server).,The only requirement is that the name[s] be resolvable.,Example: user@example.com
        attribute :name

        # @return [Array<String>, String] The search base is used to find group memberships of the user.,Example: ou=users,dc=example,dc=com
        attribute :search_base
        validates :search_base, presence: true, type: TypeGeneric.new(String)

        # @return [Hash] This is where you specify which groups should have access to what permissions for the storage-system.,For example, all users in group A will be assigned all 4 available roles, which will allow access to all the management functionality of the system (super-user). Those in group B only have the storage.monitor role, which will allow only read-only acess.,This is specified as a mapping of regular expressions to a list of roles. See the examples.,The roles that will be assigned to to the group/groups matching the provided regex.,storage.admin allows users full read/write access to storage objects and operations.,storage.monitor allows users read-only access to storage objects and operations.,support.admin allows users access to hardware, diagnostic information, the Major Event Log, and other critical support-related functionality, but not the storage configuration.,security.admin allows users access to authentication/authorization configuration, as well as the audit log configuration, and certification management.
        attribute :role_mappings
        validates :role_mappings, presence: true, type: Hash

        # @return [String, nil] This is the attribute we will use to match the provided username when a user attempts to authenticate.
        attribute :user_attribute
        validates :user_attribute, type: String

        # @return [Object, nil] A local path to a file to be used for debug logging
        attribute :log_path
      end
    end
  end
end
