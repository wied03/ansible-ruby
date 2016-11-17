# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, remove hosts on NetApp E-series storage arrays
      class Netapp_e_host < Base
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

        # @return [String] the id of the storage array you wish to act against
        attribute :ssid
        validates :ssid, presence: true, type: String

        # @return [String] If the host doesnt yet exist, the label to assign at creation time.,If the hosts already exists, this is what is used to identify the host to apply any desired changes
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The index that maps to host type you wish to create. It is recommended to use the M(netapp_e_facts) module to gather this information. Alternatively you can use the WSP portal to retrieve the information.
        attribute :host_type_index
        validates :host_type_index, presence: true, type: String

        # @return [Object, nil] a list of of dictionaries of host ports you wish to associate with the newly created host
        attribute :ports

        # @return [Object, nil] the group you want the host to be a member of
        attribute :group
      end
    end
  end
end
