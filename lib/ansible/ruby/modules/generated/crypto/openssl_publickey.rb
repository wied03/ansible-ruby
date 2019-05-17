# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows one to (re)generate OpenSSL public keys from their private keys. It uses the pyOpenSSL python library to interact with openssl. Keys are generated in PEM format. This module works only if the version of PyOpenSSL is recent enough (> 16.0.0).
      class Openssl_publickey < Base
        # @return [:present, :absent, nil] Whether the public key should exist or not, taking action if the state is different from what is stated.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Symbol, nil] Should the key be regenerated even it it already exists
        attribute :force
        validates :force, type: Symbol

        # @return [:PEM, :OpenSSH, nil] The format of the public key.
        attribute :format
        validates :format, inclusion: {:in=>[:PEM, :OpenSSH], :message=>"%{value} needs to be :PEM, :OpenSSH"}, allow_nil: true

        # @return [String] Name of the file in which the generated TLS/SSL public key will be written.
        attribute :path
        validates :path, presence: true, type: String

        # @return [String] Path to the TLS/SSL private key from which to generate the public key.
        attribute :privatekey_path
        validates :privatekey_path, presence: true, type: String

        # @return [String, nil] The passphrase for the privatekey.
        attribute :privatekey_passphrase
        validates :privatekey_passphrase, type: String
      end
    end
  end
end
