# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The C(slack) module sends notifications to U(http://slack.com) via the Incoming WebHook integration
      class Slack < Base
        # @return [Object, nil] Slack (sub)domain for your environment without protocol. (i.e. C(example.slack.com)) In 1.8 and beyond, this is deprecated and may be ignored.  See token documentation for information.
        attribute :domain

        # @return [String] Slack integration token.  This authenticates you to the slack service. Prior to 1.8, a token looked like C(3Ffe373sfhRE6y42Fg3rvf4GlK).  In 1.8 and above, ansible adapts to the new slack API where tokens look like C(G922VJP24/D921DW937/3Ffe373sfhRE6y42Fg3rvf4GlK).  If tokens are in the new format then slack will ignore any value of domain.  If the token is in the old format the domain is required.  Ansible has no control of when slack will get rid of the old API.  When slack does that the old format will stop working.  ** Please keep in mind the tokens are not the API tokens but are the webhook tokens.  In slack these are found in the webhook URL which are obtained under the apps and integrations. The incoming webhooks can be added in that area.  In some cases this may be locked by your Slack admin and you must request access.  It is there that the incoming webhooks can be added.  The key is on the end of the URL given to you in that section.
        attribute :token
        validates :token, presence: true, type: String

        # @return [String, nil] Message to send. Note that the module does not handle escaping characters. Plain-text angle brackets and ampersands should be converted to HTML entities (e.g. & to &amp;) before sending. See Slack's documentation (U(https://api.slack.com/docs/message-formatting)) for more.
        attribute :msg
        validates :msg, type: String

        # @return [String, nil] Channel to send the message to. If absent, the message goes to the channel selected for the I(token).
        attribute :channel
        validates :channel, type: String

        # @return [String, nil] This is the sender of the message.
        attribute :username
        validates :username, type: String

        # @return [String, nil] Url for the message sender's icon (default C(https://www.ansible.com/favicon.ico))
        attribute :icon_url
        validates :icon_url, type: String

        # @return [Object, nil] Emoji for the message sender. See Slack documentation for options. (if I(icon_emoji) is set, I(icon_url) will not be used)
        attribute :icon_emoji

        # @return [1, 0, nil] Automatically create links for channels and usernames in I(msg).
        attribute :link_names
        validates :link_names, inclusion: {:in=>[1, 0], :message=>"%{value} needs to be 1, 0"}, allow_nil: true

        # @return [:full, :none, nil] Setting for the message parser at Slack
        attribute :parse
        validates :parse, inclusion: {:in=>[:full, :none], :message=>"%{value} needs to be :full, :none"}, allow_nil: true

        # @return [String, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, type: String

        # @return [:normal, :good, :warning, :danger, nil] Allow text to use default colors - use the default of 'normal' to not send a custom color bar at the start of the message
        attribute :color
        validates :color, inclusion: {:in=>[:normal, :good, :warning, :danger], :message=>"%{value} needs to be :normal, :good, :warning, :danger"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] Define a list of attachments. This list mirrors the Slack JSON API.,For more information, see also in the (U(https://api.slack.com/docs/attachments)).
        attribute :attachments
        validates :attachments, type: TypeGeneric.new(Hash)
      end
    end
  end
end
