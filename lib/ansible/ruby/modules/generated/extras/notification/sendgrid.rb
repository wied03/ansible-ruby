# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Sends an email with a SendGrid account through their API, not through the SMTP service.
      class Sendgrid < Base
        # @return [String, nil] username for logging into the SendGrid account.,Since 2.2 it is only required if api_key is not supplied.
        attribute :username
        validates :username, type: String

        # @return [String, nil] password that corresponds to the username,Since 2.2 it is only required if api_key is not supplied.
        attribute :password
        validates :password, type: String

        # @return [String] the address in the "from" field for the email
        attribute :from_address
        validates :from_address, presence: true, type: String

        # @return [Array<String>, String] a list with one or more recipient email addresses
        attribute :to_addresses
        validates :to_addresses, presence: true, type: TypeGeneric.new(String)

        # @return [String] the desired subject for the email
        attribute :subject
        validates :subject, presence: true, type: String

        # @return [Object, nil] sendgrid API key to use instead of username/password
        attribute :api_key

        # @return [Object, nil] a list of email addresses to cc
        attribute :cc

        # @return [Object, nil] a list of email addresses to bcc
        attribute :bcc

        # @return [Object, nil] a list of relative or explicit paths of files you want to attach (7MB limit as per SendGrid docs)
        attribute :attachments

        # @return [Object, nil] the name you want to appear in the from field, i.e 'John Doe'
        attribute :from_name

        # @return [Boolean, nil] whether the body is html content that should be rendered
        attribute :html_body
        validates :html_body, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] a dict to pass on as headers
        attribute :headers
      end
    end
  end
end
