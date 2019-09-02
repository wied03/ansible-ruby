# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove an I(apt) key, optionally downloading it.
      class Apt_key < Base
        # @return [String, Integer, nil] The identifier of the key.,Including this allows check mode to correctly report the changed state.,If specifying a subkey's id be aware that apt-key does not understand how to remove keys via a subkey id.  Specify the primary key's id instead.,This parameter is required when C(state) is set to C(absent).
        attribute :id
        validates :id, type: MultipleTypes.new(String, Integer)

        # @return [String, nil] The keyfile contents to add to the keyring.
        attribute :data
        validates :data, type: String

        # @return [String, nil] The path to a keyfile on the remote server to add to the keyring.
        attribute :file
        validates :file, type: String

        # @return [String, nil] The full path to specific keyring file in /etc/apt/trusted.gpg.d/
        attribute :keyring
        validates :keyring, type: String

        # @return [String, nil] The URL to retrieve key from.
        attribute :url
        validates :url, type: String

        # @return [String, nil] The keyserver to retrieve key from.
        attribute :keyserver
        validates :keyserver, type: String

        # @return [:absent, :present, nil] Ensures that the key is present (added) or absent (revoked).
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), SSL certificates for the target url will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
