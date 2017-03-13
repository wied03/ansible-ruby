# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update or destroy host groups on a NetApp E-Series storage array.
      class Netapp_e_hostgroup < Base
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

        # @return [String] The ID of the array to manage (as configured on the web services proxy).
        attribute :ssid
        validates :ssid, presence: true, type: String

        # @return [:present, :absent] Whether the specified host group should exist or not.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Object, nil] The name of the host group to manage. Either this or C(id_num) must be supplied.
        attribute :name

        # @return [Object, nil] specify this when you need to update the name of a host group
        attribute :new_name

        # @return [Object, nil] The id number of the host group to manage. Either this or C(name) must be supplied.
        attribute :id

        # @return [Object, nil] a list of host names/labels to add to the group
        attribute :"hosts:"
      end
    end
  end
end
