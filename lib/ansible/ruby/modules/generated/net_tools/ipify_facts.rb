# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # If behind NAT and need to know the public IP of your internet gateway.
      class Ipify_facts < Base
        # @return [String, nil] URL of the ipify.org API service.,C(?format=json) will be appended per default.
        attribute :api_url
        validates :api_url, type: String

        # @return [Integer, nil] HTTP connection timeout in seconds.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [String, nil] When set to C(NO), SSL certificates will not be validated.
        attribute :validate_certs
        validates :validate_certs, type: String
      end
    end
  end
end
