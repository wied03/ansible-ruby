# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Send a SMS message via nexmo
      class Nexmo < Base
        # @return [String] Nexmo API Key
        attribute :api_key
        validates :api_key, presence: true, type: String

        # @return [String] Nexmo API Secret
        attribute :api_secret
        validates :api_secret, presence: true, type: String

        # @return [Integer] Nexmo Number to send from
        attribute :src
        validates :src, presence: true, type: Integer

        # @return [Array<Integer>, Integer] Phone number(s) to send SMS message to
        attribute :dest
        validates :dest, presence: true, type: TypeGeneric.new(Integer)

        # @return [String] Message to text to send. Messages longer than 160 characters will be split into multiple messages
        attribute :msg
        validates :msg, presence: true, type: String

        # @return [String, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, type: String
      end
    end
  end
end
