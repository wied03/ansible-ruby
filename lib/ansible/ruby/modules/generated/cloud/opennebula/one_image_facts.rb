# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts about OpenNebula images
      class One_image_facts < Base
        # @return [Object, nil] URL of the OpenNebula RPC server.,It is recommended to use HTTPS so that the username/password are not,transferred over the network unencrypted.,If not set then the value of the C(ONE_URL) environment variable is used.
        attribute :api_url

        # @return [Object, nil] Name of the user to login into the OpenNebula RPC server. If not set,then the value of the C(ONE_USERNAME) environment variable is used.
        attribute :api_username

        # @return [Object, nil] Password of the user to login into OpenNebula RPC server. If not set,then the value of the C(ONE_PASSWORD) environment variable is used.
        attribute :api_password

        # @return [Array<Integer>, Integer, nil] A list of images ids whose facts you want to gather.
        attribute :ids
        validates :ids, type: TypeGeneric.new(Integer)

        # @return [String, nil] A C(name) of the image whose facts will be gathered.,If the C(name) begins with '~' the C(name) will be used as regex pattern,which restricts the list of images (whose facts will be returned) whose names match specified regex.,Also, if the C(name) begins with '~*' case-insensitive matching will be performed.,See examples for more details.
        attribute :name
        validates :name, type: String
      end
    end
  end
end
