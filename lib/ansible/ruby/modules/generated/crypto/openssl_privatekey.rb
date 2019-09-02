# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows one to (re)generate OpenSSL private keys. It uses the pyOpenSSL python library to interact with openssl. One can generate either RSA or DSA private keys. Keys are generated in PEM format.
      class Openssl_privatekey < Base
        # @return [:present, :absent, nil] Whether the private key should exist or not, taking action if the state is different from what is stated.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Integer, nil] Size (in bits) of the TLS/SSL key to generate
        attribute :size
        validates :size, type: Integer

        # @return [:RSA, :DSA, nil] The algorithm used to generate the TLS/SSL private key
        attribute :type
        validates :type, expression_inclusion: {:in=>[:RSA, :DSA], :message=>"%{value} needs to be :RSA, :DSA"}, allow_nil: true

        # @return [Symbol, nil] Should the key be regenerated even if it already exists
        attribute :force
        validates :force, type: Symbol

        # @return [String] Name of the file in which the generated TLS/SSL private key will be written. It will have 0600 mode.
        attribute :path
        validates :path, presence: true, type: String

        # @return [String, nil] The passphrase for the private key.
        attribute :passphrase
        validates :passphrase, type: String

        # @return [String, nil] The cipher to encrypt the private key. (cipher can be found by running `openssl list-cipher-algorithms`)
        attribute :cipher
        validates :cipher, type: String
      end
    end
  end
end
