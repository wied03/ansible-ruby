# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # CyberArk User Management using PAS Web Services SDK. It currently supports the following actions Get User Details, Add User, Update User, Delete User.
      class Cyberark_user < Base
        # @return [String] The name of the user who will be queried (for details), added, updated or deleted.
        attribute :username
        validates :username, presence: true, type: String

        # @return [:present, :absent, nil] Specifies the state needed for the user present for create user, absent for delete user.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Dictionary set by a CyberArk authentication containing the different values to perform actions on a logged-on CyberArk session, please see M(cyberark_authentication) module for an example of cyberark_session.
        attribute :cyberark_session
        validates :cyberark_session, presence: true, type: String

        # @return [String, nil] The password that the new user will use to log on the first time. This password must meet the password policy requirements. this parameter is required when state is present -- Add User.
        attribute :initial_password
        validates :initial_password, type: String

        # @return [String, nil] The user updated password. Make sure that this password meets the password policy requirements.
        attribute :new_password
        validates :new_password, type: String

        # @return [Object, nil] The user email address.
        attribute :email

        # @return [Object, nil] The user first name.
        attribute :first_name

        # @return [Object, nil] The user last name.
        attribute :last_name

        # @return [String, nil] Whether or not the user must change their password in their next logon. Valid values = true/false.
        attribute :change_password_on_the_next_logon
        validates :change_password_on_the_next_logon, type: String

        # @return [Object, nil] The date and time when the user account will expire and become disabled.
        attribute :expiry_date

        # @return [String, nil] The type of user.
        attribute :user_type_name
        validates :user_type_name, type: String

        # @return [String, nil] Whether or not the user will be disabled. Valid values = true/false.
        attribute :disabled
        validates :disabled, type: String

        # @return [Object, nil] The Vault Location for the user.
        attribute :location

        # @return [String, nil] The name of the group the user will be added to.
        attribute :group_name
        validates :group_name, type: String
      end
    end
  end
end
