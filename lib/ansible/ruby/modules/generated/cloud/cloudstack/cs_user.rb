# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, disable, lock, enable and remove users.
      class Cs_user < Base
        # @return [String] Username of the user.
        attribute :username
        validates :username, presence: true, type: String

        # @return [String, nil] Account the user will be created under.,Required on C(state=present).
        attribute :account
        validates :account, type: String

        # @return [String, nil] Password of the user to be created.,Required on C(state=present).,Only considered on creation and will not be updated if user exists.
        attribute :password
        validates :password, type: String

        # @return [String, nil] First name of the user.,Required on C(state=present).
        attribute :first_name
        validates :first_name, type: String

        # @return [String, nil] Last name of the user.,Required on C(state=present).
        attribute :last_name
        validates :last_name, type: String

        # @return [String, nil] Email of the user.,Required on C(state=present).
        attribute :email
        validates :email, type: String

        # @return [Object, nil] Timezone of the user.
        attribute :timezone

        # @return [Symbol, nil] If API keys of the user should be generated.,Note: Keys can not be removed by the API again.
        attribute :keys_registered
        validates :keys_registered, type: Symbol

        # @return [String, nil] Domain the user is related to.
        attribute :domain
        validates :domain, type: String

        # @return [:present, :absent, :enabled, :disabled, :locked, :unlocked, nil] State of the user.,C(unlocked) is an alias for C(enabled).
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :enabled, :disabled, :locked, :unlocked], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled, :locked, :unlocked"}, allow_nil: true

        # @return [Boolean, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
