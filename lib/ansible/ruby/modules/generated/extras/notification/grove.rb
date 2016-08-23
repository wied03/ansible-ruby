# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Grove < Base
        # @return [String] Token of the channel to post to.
        attribute :channel_token
        validates :channel_token, presence: true, type: String

        # @return [String] Name of the service (displayed as the "user" in the message)
        attribute :service
        validates :service, type: String

        # @return [String] Message content
        attribute :message
        validates :message, presence: true, type: String

        # @return [Object] Service URL for the web client
        attribute :url

        # @return [Object] Icon for the service
        attribute :icon_url

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
