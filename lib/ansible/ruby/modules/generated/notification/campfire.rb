# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Send a message to Campfire.
      # Messages with newlines will result in a "Paste" message being sent.
      class Campfire < Base
        # @return [String] The subscription name to use.
        attribute :subscription
        validates :subscription, presence: true, type: String

        # @return [Integer] API token.
        attribute :token
        validates :token, presence: true, type: Integer

        # @return [Integer] Room number to which the message should be sent.
        attribute :room
        validates :room, presence: true, type: Integer

        # @return [String] The message body.
        attribute :msg
        validates :msg, presence: true, type: String

        # @return [:"56k", :bell, :bezos, :bueller, :clowntown, :cottoneyejoe, :crickets, :dadgummit, :dangerzone, :danielsan, :deeper, :drama, :greatjob, :greyjoy, :guarantee, :heygirl, :horn, :horror, :inconceivable, :live, :loggins, :makeitso, :noooo, :nyan, :ohmy, :ohyeah, :pushit, :rimshot, :rollout, :rumble, :sax, :secret, :sexyback, :story, :tada, :tmyk, :trololo, :trombone, :unix, :vuvuzela, :what, :whoomp, :yeah, :yodel, nil] Send a notification sound before the message.
        attribute :notify
        validates :notify, inclusion: {:in=>[:"56k", :bell, :bezos, :bueller, :clowntown, :cottoneyejoe, :crickets, :dadgummit, :dangerzone, :danielsan, :deeper, :drama, :greatjob, :greyjoy, :guarantee, :heygirl, :horn, :horror, :inconceivable, :live, :loggins, :makeitso, :noooo, :nyan, :ohmy, :ohyeah, :pushit, :rimshot, :rollout, :rumble, :sax, :secret, :sexyback, :story, :tada, :tmyk, :trololo, :trombone, :unix, :vuvuzela, :what, :whoomp, :yeah, :yodel], :message=>"%{value} needs to be :\"56k\", :bell, :bezos, :bueller, :clowntown, :cottoneyejoe, :crickets, :dadgummit, :dangerzone, :danielsan, :deeper, :drama, :greatjob, :greyjoy, :guarantee, :heygirl, :horn, :horror, :inconceivable, :live, :loggins, :makeitso, :noooo, :nyan, :ohmy, :ohyeah, :pushit, :rimshot, :rollout, :rumble, :sax, :secret, :sexyback, :story, :tada, :tmyk, :trololo, :trombone, :unix, :vuvuzela, :what, :whoomp, :yeah, :yodel"}, allow_nil: true
      end
    end
  end
end
