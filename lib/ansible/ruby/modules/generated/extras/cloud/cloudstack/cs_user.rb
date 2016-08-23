# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cs_user < Base
        # @return [Object] Username of the user.
        attribute :username
        validates :username, presence: true

        # @return [Object] Account the user will be created under.,Required on C(state=present).
        attribute :account

        # @return [Object] Password of the user to be created.,Required on C(state=present).,Only considered on creation and will not be updated if user exists.
        attribute :password

        # @return [Object] First name of the user.,Required on C(state=present).
        attribute :first_name

        # @return [Object] Last name of the user.,Required on C(state=present).
        attribute :last_name

        # @return [Object] Email of the user.,Required on C(state=present).
        attribute :email

        # @return [Object] Timezone of the user.
        attribute :timezone

        # @return [String] Domain the user is related to.
        attribute :domain
        validates :domain, type: String

        # @return [:present, :absent, :enabled, :disabled, :locked, :unlocked, nil] State of the user.,C(unlocked) is an alias for C(enabled).
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :enabled, :disabled, :locked, :unlocked], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled, :locked, :unlocked"}, allow_nil: true

        # @return [TrueClass] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, type: TrueClass
      end
    end
  end
end
