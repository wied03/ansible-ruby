# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Pushover < Base
        # @return [String] What message you wish to send.
        attribute :msg
        validates :msg, presence: true, type: String

        # @return [String] Pushover issued token identifying your pushover app.
        attribute :app_token
        validates :app_token, presence: true, type: String

        # @return [String] Pushover issued authentication key for your user.
        attribute :user_key
        validates :user_key, presence: true, type: String

        # @return [Object] Message priority (see U(https://pushover.net) for details.)
        attribute :pri
      end
    end
  end
end