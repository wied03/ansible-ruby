# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or delete a Java keystore in JKS format for a given certificate.
      class Java_keystore < Base
        # @return [String] Name of the certificate.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Certificate that should be used to create the key store.
        attribute :certificate
        validates :certificate, type: String

        # @return [String, nil] Private key that should be used to create the key store.
        attribute :private_key
        validates :private_key, type: String

        # @return [String, nil] Password that should be used to secure the key store.
        attribute :password
        validates :password, type: String

        # @return [String] Absolute path where the jks should be generated.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [Object, nil] Name of the user that should own jks file.
        attribute :owner

        # @return [Object, nil] Name of the group that should own jks file.
        attribute :group

        # @return [Object, nil] Mode the file should be.
        attribute :mode

        # @return [:yes, :no, nil] Key store will be created even if it already exists.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
