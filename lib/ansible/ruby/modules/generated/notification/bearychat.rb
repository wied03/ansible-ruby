# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The M(bearychat) module sends notifications to U(https://bearychat.com) via the Incoming Robot integration.
      class Bearychat < Base
        # @return [String] BearyChat WebHook URL. This authenticates you to the bearychat service. It looks like C(https://hook.bearychat.com/=ae2CF/incoming/e61bd5c57b164e04b11ac02e66f47f60).
        attribute :url
        validates :url, presence: true, type: String

        # @return [String, nil] Message to send.
        attribute :text
        validates :text, type: String

        # @return [:yes, :no, nil] If C(yes), text will be parsed as markdown.
        attribute :markdown
        validates :markdown, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Channel to send the message to. If absent, the message goes to the default channel selected by the I(url).
        attribute :channel
        validates :channel, type: String

        # @return [Array<Hash>, Hash, nil] Define a list of attachments. For more information, see https://github.com/bearyinnovative/bearychat-tutorial/blob/master/robots/incoming.md#attachments
        attribute :attachments
        validates :attachments, type: TypeGeneric.new(Hash)
      end
    end
  end
end
