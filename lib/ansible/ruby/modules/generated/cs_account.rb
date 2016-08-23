# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cs_account < Base
        # @return [Object] Name of account.
        attribute :name
        validates :name, presence: true

        # @return [Object] Username of the user to be created if account did not exist.,Required on C(state=present).
        attribute :username

        # @return [Object] Password of the user to be created if account did not exist.,Required on C(state=present).
        attribute :password

        # @return [Object] First name of the user to be created if account did not exist.,Required on C(state=present).
        attribute :first_name

        # @return [Object] Last name of the user to be created if account did not exist.,Required on C(state=present).
        attribute :last_name

        # @return [Object] Email of the user to be created if account did not exist.,Required on C(state=present).
        attribute :email

        # @return [Object] Timezone of the user to be created if account did not exist.
        attribute :timezone

        # @return [Object] Network domain of the account.
        attribute :network_domain

        # @return [String] Type of the account.
        attribute :account_type
        validates :account_type, inclusion: {:in=>[:user, :root_admin, :domain_admin], :message=>"%{value} needs to be :user, :root_admin, :domain_admin"}, allow_nil: true

        # @return [String] Domain the account is related to.
        attribute :domain
        validates :domain, type: String

        # @return [String] State of the account.,C(unlocked) is an alias for C(enabled).
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :enabled, :disabled, :locked, :unlocked], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled, :locked, :unlocked"}, allow_nil: true

        # @return [TrueClass] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, type: TrueClass
      end
    end
  end
end