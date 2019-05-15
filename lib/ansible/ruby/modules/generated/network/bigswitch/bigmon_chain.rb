# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and remove a bigmon inline service chain.
      class Bigmon_chain < Base
        # @return [String] The name of the chain.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Whether the service chain should be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The controller IP address.
        attribute :controller
        validates :controller, presence: true, type: String

        # @return [Boolean, nil] If C(false), SSL certificates will not be validated. This should only be used on personally controlled devices using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Bigmon access token. If this isn't set, the environment variable C(BIGSWITCH_ACCESS_TOKEN) is used.
        attribute :access_token
      end
    end
  end
end
