# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages OpenNebula images
      class One_image < Base
        # @return [Object, nil] URL of the OpenNebula RPC server.,It is recommended to use HTTPS so that the username/password are not,transferred over the network unencrypted.,If not set then the value of the C(ONE_URL) environment variable is used.
        attribute :api_url

        # @return [Object, nil] Name of the user to login into the OpenNebula RPC server. If not set,then the value of the C(ONE_USERNAME) environment variable is used.
        attribute :api_username

        # @return [Object, nil] Password of the user to login into OpenNebula RPC server. If not set,then the value of the C(ONE_PASSWORD) environment variable is used.
        attribute :api_password

        # @return [Integer, String, nil] A C(id) of the image you would like to manage.
        attribute :id
        validates :id, type: MultipleTypes.new(Integer, String)

        # @return [String, nil] A C(name) of the image you would like to manage.
        attribute :name
        validates :name, type: String

        # @return [:present, :absent, :cloned, :renamed, nil] C(present) - state that is used to manage the image,C(absent) - delete the image,C(cloned) - clone the image,C(renamed) - rename the image to the C(new_name)
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :cloned, :renamed], :message=>"%{value} needs to be :present, :absent, :cloned, :renamed"}, allow_nil: true

        # @return [FalseClass, TrueClass, nil] Whether the image should be enabled or disabled.
        attribute :enabled
        validates :enabled, type: MultipleTypes.new(FalseClass, TrueClass)

        # @return [String, nil] A name that will be assigned to the existing or new image.,In the case of cloning, by default C(new_name) will take the name of the origin image with the prefix 'Copy of'.
        attribute :new_name
        validates :new_name, type: String
      end
    end
  end
end
