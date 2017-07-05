# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The C(hall) module connects to the U(https://hall.com) messaging API and allows you to deliver notication messages to rooms.
      class Hall < Base
        # @return [String] Room token provided to you by setting up the Ansible room integation on U(https://hall.com)
        attribute :room_token
        validates :room_token, presence: true, type: String

        # @return [String] The message you wish to deliver as a notifcation
        attribute :msg
        validates :msg, presence: true, type: String

        # @return [String] The title of the message
        attribute :title
        validates :title, presence: true, type: String

        # @return [Object, nil] The full URL to the image you wish to use for the Icon of the message. Defaults to U(http://cdn2.hubspot.net/hub/330046/file-769078210-png/Official_Logos/ansible_logo_black_square_small.png?t=1421076128627)
        attribute :picture
      end
    end
  end
end
