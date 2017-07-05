# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather IP geolocation facts of a host's IP address using ipinfo.io API
      class Ipinfoio_facts < Base
        # @return [Integer, nil] HTTP connection timeout in seconds
        attribute :timeout
        validates :timeout, type: Integer

        # @return [String, nil] Set http user agent
        attribute :http_agent
        validates :http_agent, type: String
      end
    end
  end
end
