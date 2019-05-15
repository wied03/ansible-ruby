# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Send a message to logentries
      class Logentries_msg < Base
        # @return [String] Log token.
        attribute :token
        validates :token, presence: true, type: String

        # @return [String] The message body.
        attribute :msg
        validates :msg, presence: true, type: String

        # @return [String, nil] API endpoint
        attribute :api
        validates :api, type: String

        # @return [Integer, nil] API endpoint port
        attribute :port
        validates :port, type: Integer
      end
    end
  end
end
