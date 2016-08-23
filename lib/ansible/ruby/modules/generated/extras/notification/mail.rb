# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Mail < Base
        # @return [String] The email-address the mail is sent from. May contain address and phrase.
        attribute :from
        validates :from, type: String

        # @return [String] The email-address(es) the mail is being sent to. This is a comma-separated list, which may contain address and phrase portions.
        attribute :to
        validates :to, type: String

        # @return [String] The email-address(es) the mail is being copied to. This is a comma-separated list, which may contain address and phrase portions.
        attribute :cc
        validates :cc, type: String

        # @return [Object] The email-address(es) the mail is being 'blind' copied to. This is a comma-separated list, which may contain address and phrase portions.
        attribute :bcc

        # @return [String] The subject of the email being sent.
        attribute :subject
        validates :subject, presence: true, type: String

        # @return [String] The body of the email being sent.
        attribute :body
        validates :body, type: String

        # @return [String] If SMTP requires username
        attribute :username
        validates :username, type: String

        # @return [String] If SMTP requires password
        attribute :password
        validates :password, type: String

        # @return [String] The mail server
        attribute :host
        validates :host, type: String

        # @return [String] The mail server port
        attribute :port
        validates :port, type: String

        # @return [String] A space-separated list of pathnames of files to attach to the message. Attached files will have their content-type set to C(application/octet-stream).
        attribute :attach
        validates :attach, type: String

        # @return [String] A vertical-bar-separated list of headers which should be added to the message. Each individual header is specified as C(header=value) (see example below).
        attribute :headers
        validates :headers, type: String

        # @return [String] The character set of email being sent
        attribute :charset
        validates :charset, type: String

        # @return [String] The minor mime type, can be either text or html. The major type is always text.
        attribute :subtype
        validates :subtype, type: String
      end
    end
  end
end
