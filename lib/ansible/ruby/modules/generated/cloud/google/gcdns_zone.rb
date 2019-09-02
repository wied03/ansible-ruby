# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates or removes managed zones in Google Cloud DNS.
      class Gcdns_zone < Base
        # @return [:present, :absent, nil] Whether the given zone should or should not be present.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The DNS domain name of the zone.,This is NOT the Google Cloud DNS zone ID (e.g., example-com). If you attempt to specify a zone ID, this module will attempt to create a TLD and will fail.
        attribute :zone
        validates :zone, presence: true, type: String

        # @return [String, nil] An arbitrary text string to use for the zone description.
        attribute :description
        validates :description, type: String

        # @return [Object, nil] The e-mail address for a service account with access to Google Cloud DNS.
        attribute :service_account_email

        # @return [Object, nil] The path to the PEM file associated with the service account email.,This option is deprecated and may be removed in a future release. Use I(credentials_file) instead.
        attribute :pem_file

        # @return [Object, nil] The path to the JSON file associated with the service account email.
        attribute :credentials_file

        # @return [Object, nil] The Google Cloud Platform project ID to use.
        attribute :project_id
      end
    end
  end
end
