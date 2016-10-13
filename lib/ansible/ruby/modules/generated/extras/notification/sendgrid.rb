# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Sends an email with a SendGrid account through their API, not through the SMTP service.
      class Sendgrid < Base
        # @return [String] username for logging into the SendGrid account
        attribute :username
        validates :username, presence: true, type: String

        # @return [String] password that corresponds to the username
        attribute :password
        validates :password, presence: true, type: String

        # @return [String] the address in the "from" field for the email
        attribute :from_address
        validates :from_address, presence: true, type: String

        # @return [Array<String>, String] a list with one or more recipient email addresses
        attribute :to_addresses
        validates :to_addresses, presence: true, type: TypeGeneric.new(String)

        # @return [String] the desired subject for the email
        attribute :subject
        validates :subject, presence: true, type: String
      end
    end
  end
end
