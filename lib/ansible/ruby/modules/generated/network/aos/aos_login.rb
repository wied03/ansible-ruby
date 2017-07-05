# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Obtain the AOS server session token by providing the required username and password credentials.  Upon successful authentication, this module will return the session-token that is required by all subsequent AOS module usage. On success the module will automatically populate ansible facts with the variable I(aos_session) This module is not idempotent and do not support check mode.
      class Aos_login < Base
        # @return [String] Address of the AOS Server on which you want to open a connection.
        attribute :server
        validates :server, presence: true, type: String

        # @return [Integer, nil] Port number to use when connecting to the AOS server.
        attribute :port
        validates :port, type: Integer

        # @return [String, nil] Login username to use when connecting to the AOS server.
        attribute :user
        validates :user, type: String

        # @return [String, nil] Password to use when connecting to the AOS server.
        attribute :passwd
        validates :passwd, type: String
      end
    end
  end
end
