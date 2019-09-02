# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, disable, lock, enable and remove accounts.
      class Cs_account < Base
        # @return [String] Name of account.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Username of the user to be created if account did not exist.,Required on C(state=present).
        attribute :username
        validates :username, type: String

        # @return [String, nil] Password of the user to be created if account did not exist.,Required on C(state=present).
        attribute :password
        validates :password, type: String

        # @return [String, nil] First name of the user to be created if account did not exist.,Required on C(state=present).
        attribute :first_name
        validates :first_name, type: String

        # @return [String, nil] Last name of the user to be created if account did not exist.,Required on C(state=present).
        attribute :last_name
        validates :last_name, type: String

        # @return [String, nil] Email of the user to be created if account did not exist.,Required on C(state=present).
        attribute :email
        validates :email, type: String

        # @return [Object, nil] Timezone of the user to be created if account did not exist.
        attribute :timezone

        # @return [Object, nil] Network domain of the account.
        attribute :network_domain

        # @return [:user, :root_admin, :domain_admin, nil] Type of the account.
        attribute :account_type
        validates :account_type, expression_inclusion: {:in=>[:user, :root_admin, :domain_admin], :message=>"%{value} needs to be :user, :root_admin, :domain_admin"}, allow_nil: true

        # @return [String, nil] Domain the account is related to.
        attribute :domain
        validates :domain, type: String

        # @return [:present, :absent, :enabled, :disabled, :locked, :unlocked, nil] State of the account.,C(unlocked) is an alias for C(enabled).
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :enabled, :disabled, :locked, :unlocked], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled, :locked, :unlocked"}, allow_nil: true

        # @return [:yes, :no, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
