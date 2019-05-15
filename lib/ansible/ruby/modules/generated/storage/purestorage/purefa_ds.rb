# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Set or erase configuration for the directory service. There is no facility to SSL certificates at this time. Use the FlashArray GUI for this additional configuration work.
      # To modify an existing directory service configuration you must first delete an exisitng configuration and then recreate with new settings.
      class Purefa_ds < Base
        # @return [:absent, :present, nil] Create or delete directory service configuration
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Boolean, nil] Whether to enable or disable directory service support.
        attribute :enable
        validates :enable, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] A list of up to 30 URIs of the directory servers. Each URI must include the scheme ldap:// or ldaps:// (for LDAP over SSL), a hostname, and a domain name or IP address. For example, ldap://ad.company.com configures the directory service with the hostname "ad" in the domain "company.com" while specifying the unencrypted LDAP protocol.
        attribute :uri
        validates :uri, type: String

        # @return [Array<String>, String] Sets the base of the Distinguished Name (DN) of the directory service groups. The base should consist of only Domain Components (DCs). The base_dn will populate with a default value when a URI is entered by parsing domain components from the URI. The base DN should specify DC= for each domain component and multiple DCs should be separated by commas.
        attribute :base_dn
        validates :base_dn, presence: true, type: TypeGeneric.new(String)

        # @return [String, nil] Sets the password of the bind_user user name account.
        attribute :bind_password
        validates :bind_password, type: String

        # @return [String, nil] Sets the user name that can be used to bind to and query the directory.,For Active Directory, enter the username - often referred to as sAMAccountName or User Logon Name - of the account that is used to perform directory lookups.,For OpenLDAP, enter the full DN of the user.
        attribute :bind_user
        validates :bind_user, type: String

        # @return [String, nil] Specifies where the configured groups are located in the directory tree. This field consists of Organizational Units (OUs) that combine with the base DN attribute and the configured group CNs to complete the full Distinguished Name of the groups. The group base should specify OU= for each OU and multiple OUs should be separated by commas. The order of OUs is important and should get larger in scope from left to right. Each OU should not exceed 64 characters in length.
        attribute :group_base
        validates :group_base, type: String

        # @return [String, nil] Sets the common Name (CN) of the configured directory service group containing users with read-only privileges on the FlashArray. This name should be just the Common Name of the group without the CN= specifier. Common Names should not exceed 64 characters in length.
        attribute :ro_group
        validates :ro_group, type: String

        # @return [String, nil] Sets the common Name (CN) of the configured directory service group containing administrators with storage-related privileges on the FlashArray. This name should be just the Common Name of the group without the CN= specifier. Common Names should not exceed 64 characters in length.
        attribute :sa_group
        validates :sa_group, type: String

        # @return [String, nil] Sets the common Name (CN) of the directory service group containing administrators with full privileges when managing the FlashArray. The name should be just the Common Name of the group without the CN= specifier. Common Names should not exceed 64 characters in length.
        attribute :aa_group
        validates :aa_group, type: String
      end
    end
  end
end
