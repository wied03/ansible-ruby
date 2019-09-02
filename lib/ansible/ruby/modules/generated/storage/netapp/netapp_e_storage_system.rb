# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage the arrays accessible via a NetApp Web Services Proxy for NetApp E-series storage arrays.
      class Netapp_e_storage_system < Base
        # @return [String] The username to authenticate with the SANtricity WebServices Proxy or embedded REST API.
        attribute :api_username
        validates :api_username, presence: true, type: String

        # @return [String] The password to authenticate with the SANtricity WebServices Proxy or embedded REST API.
        attribute :api_password
        validates :api_password, presence: true, type: String

        # @return [String] The url to the SANtricity WebServices Proxy or embedded REST API.
        attribute :api_url
        validates :api_url, presence: true, type: String

        # @return [:yes, :no, nil] Should https certificates be validated?
        attribute :validate_certs
        validates :validate_certs, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] The ID of the array to manage. This value must be unique for each array.
        attribute :ssid
        validates :ssid, presence: true, type: String

        # @return [:present, :absent] Whether the specified array should be configured on the Web Services Proxy or not.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Array<String>, String] The list addresses for the out-of-band management adapter or the agent host. Mutually exclusive of array_wwn parameter.
        attribute :controller_addresses
        validates :controller_addresses, presence: true, type: TypeGeneric.new(String)

        # @return [Object, nil] The WWN of the array to manage. Only necessary if in-band managing multiple arrays on the same agent host.  Mutually exclusive of controller_addresses parameter.
        attribute :array_wwn

        # @return [Object, nil] The management password of the array to manage, if set.
        attribute :array_password

        # @return [:yes, :no, nil] Enable trace logging for SYMbol calls to the storage system.
        attribute :enable_trace
        validates :enable_trace, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Optional meta tags to associate to this storage system
        attribute :meta_tags
      end
    end
  end
end
