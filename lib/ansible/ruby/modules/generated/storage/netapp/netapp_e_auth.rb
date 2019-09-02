# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Sets or updates the password for a storage array.  When the password is updated on the storage array, it must be updated on the SANtricity Web Services proxy. Note, all storage arrays do not have a Monitor or RO role.
      class Netapp_e_auth < Base
        # @return [Boolean, nil] Should https certificates be validated?
        attribute :validate_certs
        validates :validate_certs, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The name of the storage array. Note that if more than one storage array with this name is detected, the task will fail and you'll have to use the ID instead.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] the identifier of the storage array in the Web Services Proxy.
        attribute :ssid

        # @return [Boolean, nil] Boolean value on whether to update the admin password. If set to false then the RO account is updated.
        attribute :set_admin
        validates :set_admin, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The current admin password. This is not required if the password hasn't been set before.
        attribute :current_password
        validates :current_password, type: String

        # @return [String] The password you would like to set. Cannot be more than 30 characters.
        attribute :new_password
        validates :new_password, presence: true, type: String

        # @return [String, nil] The full API url.,Example: http://ENDPOINT:8080/devmgr/v2,This can optionally be set via an environment variable, API_URL
        attribute :api_url
        validates :api_url, type: String

        # @return [String, nil] The username used to authenticate against the API,This can optionally be set via an environment variable, API_USERNAME
        attribute :api_username
        validates :api_username, type: String

        # @return [String, nil] The password used to authenticate against the API,This can optionally be set via an environment variable, API_PASSWORD
        attribute :api_password
        validates :api_password, type: String
      end
    end
  end
end
