# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Sync Cobbler to commit changes.
      class Cobbler_sync < Base
        # @return [String, nil] The name or IP address of the Cobbler system.
        attribute :host
        validates :host, type: String

        # @return [Object, nil] Port number to be used for REST connection.,The default value depends on parameter C(use_ssl).
        attribute :port

        # @return [String, nil] The username to log in to Cobbler.
        attribute :username
        validates :username, type: String

        # @return [String] The password to log in to Cobbler.
        attribute :password
        validates :password, presence: true, type: String

        # @return [:yes, :no, nil] If C(no), an HTTP connection will be used instead of the default HTTPS connection.
        attribute :use_ssl
        validates :use_ssl, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated.,This should only set to C(no) when used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
