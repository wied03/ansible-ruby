# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Irc < Base
        # @return [String] IRC server name/address
        attribute :server
        validates :server, type: String

        # @return [Fixnum] IRC server port number
        attribute :port
        validates :port, type: Fixnum

        # @return [String] Nickname to send the message from. May be shortened, depending on server's NICKLEN setting.
        attribute :nick
        validates :nick, type: String

        # @return [String] The message body.
        attribute :msg
        validates :msg, presence: true, type: String

        # @return [Object] Set the channel topic
        attribute :topic

        # @return [:none, :white, :black, :blue, :green, :red, :brown, :purple, :orange, :yellow, :light_green, :teal, :light_cyan, :light_blue, :pink, :gray, :light_gray, nil] Text color for the message. ("none" is a valid option in 1.6 or later, in 1.6 and prior, the default color is black, not "none"). Added 11 more colors in version 2.0.
        attribute :color
        validates :color, inclusion: {:in=>[:none, :white, :black, :blue, :green, :red, :brown, :purple, :orange, :yellow, :light_green, :teal, :light_cyan, :light_blue, :pink, :gray, :light_gray], :message=>"%{value} needs to be :none, :white, :black, :blue, :green, :red, :brown, :purple, :orange, :yellow, :light_green, :teal, :light_cyan, :light_blue, :pink, :gray, :light_gray"}, allow_nil: true

        # @return [String] Channel name.  One of nick_to or channel needs to be set.  When both are set, the message will be sent to both of them.
        attribute :channel
        validates :channel, presence: true, type: String

        # @return [Array<String>] A list of nicknames to send the message to. One of nick_to or channel needs to be set.  When both are defined, the message will be sent to both of them.
        attribute :nick_to, flat_array: true
        validates :nick_to, type: TypeGeneric.new(String)

        # @return [Object] Channel key
        attribute :key

        # @return [Object] Server password
        attribute :passwd

        # @return [Fixnum] Timeout to use while waiting for successful registration and join messages, this is to prevent an endless loop
        attribute :timeout
        validates :timeout, type: Fixnum

        # @return [Object] Designates whether TLS/SSL should be used when connecting to the IRC server
        attribute :use_ssl

        # @return [TrueClass] Designates whether user should part from channel after sending message or not. Useful for when using a faux bot and not wanting join/parts between messages.
        attribute :part
        validates :part, type: TrueClass

        # @return [:bold, :underline, :reverse, :italic, nil] Text style for the message. Note italic does not work on some clients
        attribute :style
        validates :style, inclusion: {:in=>[:bold, :underline, :reverse, :italic], :message=>"%{value} needs to be :bold, :underline, :reverse, :italic"}, allow_nil: true
      end
    end
  end
end
