# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Slack < Base
        # @return [String, nil] Slack (sub)domain for your environment without protocol. (i.e. C(future500.slack.com)) In 1.8 and beyond, this is deprecated and may be ignored.  See token documentation for information.
        attribute :domain
        validates :domain, type: String

        # @return [String] Slack integration token.  This authenticates you to the slack service. Prior to 1.8, a token looked like C(3Ffe373sfhRE6y42Fg3rvf4GlK).  In 1.8 and above, ansible adapts to the new slack API where tokens look like C(G922VJP24/D921DW937/3Ffe373sfhRE6y42Fg3rvf4GlK).  If tokens are in the new format then slack will ignore any value of domain.  If the token is in the old format the domain is required.  Ansible has no control of when slack will get rid of the old API.  When slack does that the old format will stop working.
        attribute :token
        validates :token, presence: true, type: String

        # @return [String, nil] Message to send.
        attribute :msg
        validates :msg, type: String

        # @return [String, nil] Channel to send the message to. If absent, the message goes to the channel selected for the I(token).
        attribute :channel
        validates :channel, type: String

        # @return [String, nil] This is the sender of the message.
        attribute :username
        validates :username, type: String

        # @return [String, nil] Url for the message sender's icon (default C(http://www.ansible.com/favicon.ico))
        attribute :icon_url
        validates :icon_url, type: String

        # @return [String, nil] Emoji for the message sender. See Slack documentation for options. (if I(icon_emoji) is set, I(icon_url) will not be used)
        attribute :icon_emoji
        validates :icon_emoji, type: String

        # @return [1, 0, nil] Automatically create links for channels and usernames in I(msg).
        attribute :link_names
        validates :link_names, inclusion: {:in=>[1, 0], :message=>"%{value} needs to be 1, 0"}, allow_nil: true

        # @return [:full, :none, nil] Setting for the message parser at Slack
        attribute :parse
        validates :parse, inclusion: {:in=>[:full, :none], :message=>"%{value} needs to be :full, :none"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:normal, :good, :warning, :danger, nil] Allow text to use default colors - use the default of 'normal' to not send a custom color bar at the start of the message
        attribute :color
        validates :color, inclusion: {:in=>[:normal, :good, :warning, :danger], :message=>"%{value} needs to be :normal, :good, :warning, :danger"}, allow_nil: true

        # @return [String, nil] Define a list of attachments. This list mirrors the Slack JSON API. For more information, see https://api.slack.com/docs/attachments
        attribute :attachments
        validates :attachments, type: String
      end
    end
  end
end
