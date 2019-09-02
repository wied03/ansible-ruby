# frozen_string_literal: true
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

        # @return [:plain, :markdown, :html, nil] Message format. Formatting options `markdown` and `html` described in Telegram API docs (https://core.telegram.org/bots/api#formatting-options). If option `plain` set, message will not be formatted.
        attribute :msg_format
        validates :msg_format, expression_inclusion: {:in=>[:plain, :markdown, :html], :message=>"%{value} needs to be :plain, :markdown, :html"}, allow_nil: true

        # @return [String] Token identifying your telegram bot.
        attribute :token
        validates :token, presence: true, type: String

        # @return [Integer] Telegram group or user chat_id
        attribute :chat_id
        validates :chat_id, presence: true, type: Integer
      end
    end
  end
end
