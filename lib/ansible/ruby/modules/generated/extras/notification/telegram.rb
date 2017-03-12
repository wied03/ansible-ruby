# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Send notifications via telegram bot, to a verified group or user
      class Telegram < Base
        # @return [String] What message you wish to send.
        attribute :msg
        validates :msg, presence: true, type: String

        # @return [String] Token identifying your telegram bot.
        attribute :token
        validates :token, presence: true, type: String

        # @return [String] Telegram group or user chat_id
        attribute :chat_id
        validates :chat_id, presence: true, type: String
      end
    end
  end
end
