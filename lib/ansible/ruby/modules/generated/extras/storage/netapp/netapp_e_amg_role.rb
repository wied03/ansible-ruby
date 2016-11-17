# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Update a storage array to become the primary or secondary instance in an asynchronous mirror group
      class Netapp_e_amg_role < Base
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

        # @return [String] The ID of the primary storage array for the async mirror action
        attribute :ssid
        validates :ssid, presence: true, type: String

        # @return [:primary, :secondary] Whether the array should be the primary or secondary array for the AMG
        attribute :role
        validates :role, presence: true, inclusion: {:in=>[:primary, :secondary], :message=>"%{value} needs to be :primary, :secondary"}

        # @return [Boolean, nil] Whether to avoid synchronization prior to role reversal
        attribute :noSync
        validates :noSync, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Whether to force the role reversal regardless of the online-state of the primary
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
