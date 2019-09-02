# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows to manage posix users on a univention corporate server (UCS). It uses the python API of the UCS to create a new object or edit it.
      class Udm_user < Base
        # @return [:present, :absent, nil] Whether the user is present or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] User name
        attribute :username
        validates :username, presence: true

        # @return [String, nil] First name. Required if C(state=present).
        attribute :firstname
        validates :firstname, type: String

        # @return [String, nil] Last name. Required if C(state=present).
        attribute :lastname
        validates :lastname, type: String

        # @return [String, nil] Password. Required if C(state=present).
        attribute :password
        validates :password, type: String

        # @return [Object, nil] Birthday
        attribute :birthday

        # @return [Object, nil] City of users business address.
        attribute :city

        # @return [Object, nil] Country of users business address.
        attribute :country

        # @return [Object, nil] Department number of users business address.
        attribute :department_number

        # @return [Object, nil] Description (not gecos)
        attribute :description

        # @return [Object, nil] Display name (not gecos)
        attribute :display_name

        # @return [Object, nil] A list of e-mail addresses.
        attribute :email

        # @return [Object, nil] Employee number
        attribute :employee_number

        # @return [Object, nil] Employee type
        attribute :employee_type

        # @return [Object, nil] GECOS
        attribute :gecos

        # @return [Object, nil] POSIX groups, the LDAP DNs of the groups will be found with the LDAP filter for each group as $GROUP: C((&(objectClass=posixGroup)(cn=$GROUP))).
        attribute :groups

        # @return [Object, nil] Home NFS share. Must be a LDAP DN, e.g. C(cn=home,cn=shares,ou=school,dc=example,dc=com).
        attribute :home_share

        # @return [Object, nil] Path to home NFS share, inside the homeShare.
        attribute :home_share_path

        # @return [Object, nil] List of private telephone numbers.
        attribute :home_telephone_number

        # @return [Object, nil] Windows home drive, e.g. C("H:").
        attribute :homedrive

        # @return [Object, nil] List of alternative e-mail addresses.
        attribute :mail_alternative_address

        # @return [Object, nil] FQDN of mail server
        attribute :mail_home_server

        # @return [Object, nil] Primary e-mail address
        attribute :mail_primary_address

        # @return [Object, nil] Mobile phone number
        attribute :mobile_telephone_number

        # @return [Object, nil] Organisation
        attribute :organisation

        # @return [:yes, :no, nil] Override password history
        attribute :override_pw_history
        validates :override_pw_history, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Override password check
        attribute :override_pw_length
        validates :override_pw_length, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] List of pager telephone numbers.
        attribute :pager_telephonenumber

        # @return [Object, nil] List of telephone numbers.
        attribute :phone

        # @return [Object, nil] Postal code of users business address.
        attribute :postcode

        # @return [Array<String>, String, nil] Primary group. This must be the group LDAP DN.
        attribute :primary_group
        validates :primary_group, type: TypeGeneric.new(String)

        # @return [Object, nil] Windows profile directory
        attribute :profilepath

        # @return [0, 1, nil] Change password on next login.
        attribute :pwd_change_next_login
        validates :pwd_change_next_login, expression_inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [Object, nil] Room number of users business address.
        attribute :room_number

        # @return [Object, nil] Samba privilege, like allow printer administration, do domain join.
        attribute :samba_privileges

        # @return [Object, nil] Allow the authentication only on this Microsoft Windows host.
        attribute :samba_user_workstations

        # @return [Object, nil] Windows home path, e.g. C('\\\\$FQDN\\$USERNAME').
        attribute :sambahome

        # @return [Object, nil] Windows logon script.
        attribute :scriptpath

        # @return [Object, nil] A list of superiors as LDAP DNs.
        attribute :secretary

        # @return [Object, nil] Enable user for the following service providers.
        attribute :serviceprovider

        # @return [String, nil] Login shell
        attribute :shell
        validates :shell, type: String

        # @return [Object, nil] Street of users business address.
        attribute :street

        # @return [Object, nil] Title, e.g. C(Prof.).
        attribute :title

        # @return [String, nil] Unix home directory
        attribute :unixhome
        validates :unixhome, type: String

        # @return [String, nil] Account expiry date, e.g. C(1999-12-31).
        attribute :userexpiry
        validates :userexpiry, type: String

        # @return [String, nil] Define the whole position of users object inside the LDAP tree, e.g. C(cn=employee,cn=users,ou=school,dc=example,dc=com).
        attribute :position
        validates :position, type: String

        # @return [String, nil] C(always) will update passwords if they differ. C(on_create) will only set the password for newly created users.
        attribute :update_password
        validates :update_password, type: String

        # @return [String, nil] Organizational Unit inside the LDAP Base DN, e.g. C(school) for LDAP OU C(ou=school,dc=example,dc=com).
        attribute :ou
        validates :ou, type: String

        # @return [String, nil] LDAP subpath inside the organizational unit, e.g. C(cn=teachers,cn=users) for LDAP container C(cn=teachers,cn=users,dc=example,dc=com).
        attribute :subpath
        validates :subpath, type: String
      end
    end
  end
end
