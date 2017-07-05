# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module is useful for sending emails from playbooks.
      # One may wonder why automate sending emails?  In complex environments there are from time to time processes that cannot be automated, either because you lack the authority to make it so, or because not everyone agrees to a common approach.
      # If you cannot automate a specific step, but the step is non-blocking, sending out an email to the responsible party to make him perform his part of the bargain is an elegant way to put the responsibility in someone else's lap.
      # Of course sending out a mail can be equally useful as a way to notify one or more people in a team that a specific action has been (successfully) taken.
      class Mail < Base
        # @return [String, nil] The email-address the mail is sent from. May contain address and phrase.
        attribute :from
        validates :from, type: String

        # @return [String, nil] The email-address(es) the mail is being sent to. This is a comma-separated list, which may contain address and phrase portions.
        attribute :to
        validates :to, type: String

        # @return [String, nil] The email-address(es) the mail is being copied to. This is a comma-separated list, which may contain address and phrase portions.
        attribute :cc
        validates :cc, type: String

        # @return [Object, nil] The email-address(es) the mail is being 'blind' copied to. This is a comma-separated list, which may contain address and phrase portions.
        attribute :bcc

        # @return [String] The subject of the email being sent.
        attribute :subject
        validates :subject, presence: true, type: String

        # @return [String, nil] The body of the email being sent.
        attribute :body
        validates :body, type: String

        # @return [String, nil] If SMTP requires username
        attribute :username
        validates :username, type: String

        # @return [String, nil] If SMTP requires password
        attribute :password
        validates :password, type: String

        # @return [String, nil] The mail server
        attribute :host
        validates :host, type: String

        # @return [Integer, nil] The mail server port.  This must be a valid integer between 1 and 65534
        attribute :port
        validates :port, type: Integer

        # @return [String, nil] A space-separated list of pathnames of files to attach to the message. Attached files will have their content-type set to C(application/octet-stream).
        attribute :attach
        validates :attach, type: String

        # @return [String, nil] A vertical-bar-separated list of headers which should be added to the message. Each individual header is specified as C(header=value) (see example below).
        attribute :headers
        validates :headers, type: String

        # @return [String, nil] The character set of email being sent
        attribute :charset
        validates :charset, type: String

        # @return [String, nil] The minor mime type, can be either text or html. The major type is always text.
        attribute :subtype
        validates :subtype, type: String

        # @return [:always, :never, :try, :starttls, nil] If C(always), the connection will only send email if the connection is Encrypted. If the server doesn't accept the encrypted connection it will fail.,If C(try), the connection will attempt to setup a secure SSL/TLS session, before trying to send.,If C(never), the connection will not attempt to setup a secure SSL/TLS session, before sending,If C(starttls), the connection will try to upgrade to a secure SSL/TLS connection, before sending. If it is unable to do so it will fail.
        attribute :secure
        validates :secure, inclusion: {:in=>[:always, :never, :try, :starttls], :message=>"%{value} needs to be :always, :never, :try, :starttls"}, allow_nil: true

        # @return [Integer, nil] Sets the Timeout in seconds for connection attempts
        attribute :timeout
        validates :timeout, type: Integer
      end
    end
  end
end
