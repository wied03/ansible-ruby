# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Send a message to hipchat
      class Hipchat < Base
        # @return [String] API token.
        attribute :token
        validates :token, presence: true, type: String

        # @return [String] ID or name of the room.
        attribute :room
        validates :room, presence: true, type: String

        # @return [String, nil] Name the message will appear be sent from. max 15 characters. Over 15, will be shorten.
        attribute :from
        validates :from, type: String

        # @return [String] The message body.
        attribute :msg
        validates :msg, presence: true, type: String

        # @return [:yellow, :red, :green, :purple, :gray, :random, nil] Background color for the message. Default is yellow.
        attribute :color
        validates :color, inclusion: {:in=>[:yellow, :red, :green, :purple, :gray, :random], :message=>"%{value} needs to be :yellow, :red, :green, :purple, :gray, :random"}, allow_nil: true

        # @return [:text, :html, nil] message format. html or text. Default is text.
        attribute :msg_format
        validates :msg_format, inclusion: {:in=>[:text, :html], :message=>"%{value} needs to be :text, :html"}, allow_nil: true

        # @return [:yes, :no, nil] notify or not (change the tab color, play a sound, etc)
        attribute :notify
        validates :notify, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] API url if using a self-hosted hipchat server. For hipchat api version 2 use C(/v2) path in URI
        attribute :api
        validates :api, type: String
      end
    end
  end
end
