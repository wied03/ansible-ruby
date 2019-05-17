# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages Windows Active Directory user accounts.
      class Win_domain_user < Base
        # @return [String] Name of the user to create, remove or modify.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, :query, nil] When C(present), creates or updates the user account.  When C(absent), removes the user account if it exists.  When C(query), retrieves the user account details without making any changes.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true

        # @return [:yes, :no, nil] C(yes) will enable the user account.,C(no) will disable the account.
        attribute :enabled
        validates :enabled, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:no, nil] C(no) will unlock the user account if locked. Note that there is not a way to lock an account as an administrator. Accounts are locked due to user actions; as an admin, you may only unlock a locked account. If you wish to administratively disable an account, set I(enabled) to C(no).
        attribute :account_locked
        validates :account_locked, inclusion: {:in=>[:no], :message=>"%{value} needs to be :no"}, allow_nil: true

        # @return [Object, nil] Description of the user
        attribute :description

        # @return [Array<String>, String, nil] Adds or removes the user from this list of groups, depending on the value of I(groups_action). To remove all but the Principal Group, set C(groups=<principal group name>) and I(groups_action=replace). Note that users cannot be removed from their principal group (for example, "Domain Users").
        attribute :groups
        validates :groups, type: TypeGeneric.new(String)

        # @return [:add, :remove, :replace, nil] If C(add), the user is added to each group in I(groups) where not already a member.,If C(remove), the user is removed from each group in I(groups).,If C(replace), the user is added as a member of each group in I(groups) and removed from any other groups.
        attribute :groups_action
        validates :groups_action, inclusion: {:in=>[:add, :remove, :replace], :message=>"%{value} needs to be :add, :remove, :replace"}, allow_nil: true

        # @return [String, nil] Optionally set the user's password to this (plain text) value. In order to enable an account - I(enabled) - a password must already be configured on the account, or you must provide a password here.
        attribute :password
        validates :password, type: String

        # @return [:always, :on_create, nil] C(always) will update passwords if they differ.,C(on_create) will only set the password for newly created users.,Note that C(always) will always report an Ansible status of 'changed' because we cannot determine whether the new password differs from the old password.
        attribute :update_password
        validates :update_password, inclusion: {:in=>[:always, :on_create], :message=>"%{value} needs to be :always, :on_create"}, allow_nil: true

        # @return [Symbol, nil] C(yes) will require the user to change their password at next login.,C(no) will clear the expired password flag.,This is mutually exclusive with I(password_never_expires).
        attribute :password_expired
        validates :password_expired, type: Symbol

        # @return [Symbol, nil] C(yes) will set the password to never expire.,C(no) will allow the password to expire.,This is mutually exclusive with I(password_expired).
        attribute :password_never_expires
        validates :password_never_expires, type: Symbol

        # @return [Symbol, nil] C(yes) will prevent the user from changing their password.,C(no) will allow the user to change their password.
        attribute :user_cannot_change_password
        validates :user_cannot_change_password, type: Symbol

        # @return [String, nil] Configures the user's first name (given name).
        attribute :firstname
        validates :firstname, type: String

        # @return [String, nil] Configures the user's last name (surname).
        attribute :surname
        validates :surname, type: String

        # @return [String, nil] Configures the user's company name.
        attribute :company
        validates :company, type: String

        # @return [Object, nil] Configures the User Principal Name (UPN) for the account.,This is not required, but is best practice to configure for modern versions of Active Directory.,The format is C(<username>@<domain>).
        attribute :upn

        # @return [Object, nil] Configures the user's email address.,This is a record in AD and does not do anything to configure any email servers or systems.
        attribute :email

        # @return [String, nil] Configures the user's street address.
        attribute :street
        validates :street, type: String

        # @return [String, nil] Configures the user's city.
        attribute :city
        validates :city, type: String

        # @return [String, nil] Configures the user's state or province.
        attribute :state_province
        validates :state_province, type: String

        # @return [Integer, nil] Configures the user's postal code / zip code.
        attribute :postal_code
        validates :postal_code, type: Integer

        # @return [String, nil] Configures the user's country code.,Note that this is a two-character ISO 3166 code.
        attribute :country
        validates :country, type: String

        # @return [Array<String>, String, nil] Container or OU for the new user; if you do not specify this, the user will be placed in the default container for users in the domain.,Setting the path is only available when a new user is created; if you specify a path on an existing user, the user's path will not be updated - you must delete (e.g., state=absent) the user and then re-add the user with the appropriate path.
        attribute :path
        validates :path, type: TypeGeneric.new(String)

        # @return [Hash, nil] A dict of custom LDAP attributes to set on the user.,This can be used to set custom attributes that are not exposed as module parameters, e.g. C(telephoneNumber).,See the examples on how to format this parameter.
        attribute :attributes
        validates :attributes, type: Hash

        # @return [String, nil] The username to use when interacting with AD.,If this is not set then the user Ansible used to log in with will be used instead when using CredSSP or Kerberos with credential delegation.
        attribute :domain_username
        validates :domain_username, type: String

        # @return [String, nil] The password for I(username).
        attribute :domain_password
        validates :domain_password, type: String

        # @return [String, nil] Specifies the Active Directory Domain Services instance to connect to.,Can be in the form of an FQDN or NetBIOS name.,If not specified then the value is based on the domain of the computer running PowerShell.
        attribute :domain_server
        validates :domain_server, type: String
      end
    end
  end
end
