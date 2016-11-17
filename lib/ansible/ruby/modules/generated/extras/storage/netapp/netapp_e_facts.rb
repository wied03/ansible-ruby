# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Return various information about NetApp E-Series storage arrays (eg, configuration, disks)
      class Netapp_e_facts < Base
        # @return [String] The username to authenticate with the SANtricity WebServices Proxy or embedded REST API.
        attribute :api_username
        validates :api_username, presence: true, type: String

        # @return [String] The password to authenticate with the SANtricity WebServices Proxy or embedded REST API.
        attribute :api_password
        validates :api_password, presence: true, type: String

        # @return [String] The url to the SANtricity WebServices Proxy or embedded REST API.
        attribute :api_url
        validates :api_url, presence: true, type: String

        # @return [Boolean, nil] Should https certificates be validated?
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object] The ID of the array to manage. This value must be unique for each array.
        attribute :ssid
        validates :ssid, presence: true
      end
    end
  end
end
