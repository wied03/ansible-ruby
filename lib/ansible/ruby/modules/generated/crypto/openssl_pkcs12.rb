# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows one to (re-)generate PKCS#12.
      class Openssl_pkcs12 < Base
        # @return [:parse, :export, nil] C(export) or C(parse) a PKCS#12.
        attribute :action
        validates :action, expression_inclusion: {:in=>[:parse, :export], :message=>"%{value} needs to be :parse, :export"}, allow_nil: true

        # @return [String, nil] List of CA certificate to include.
        attribute :ca_certificates
        validates :ca_certificates, type: String

        # @return [String, nil] The path to read certificates and private keys from.  Must be in PEM format.
        attribute :certificate_path
        validates :certificate_path, type: String

        # @return [Symbol, nil] Should the file be regenerated even if it already exists.
        attribute :force
        validates :force, type: Symbol

        # @return [String, nil] Specifies the friendly name for the certificate and private key.
        attribute :friendly_name
        validates :friendly_name, type: String

        # @return [Integer, nil] Number of times to repeat the encryption step.
        attribute :iter_size
        validates :iter_size, type: Integer

        # @return [Integer, nil] Number of times to repeat the MAC step.
        attribute :maciter_size
        validates :maciter_size, type: Integer

        # @return [Object, nil] The PKCS#12 password.
        attribute :passphrase

        # @return [String] Filename to write the PKCS#12 file to.
        attribute :path
        validates :path, presence: true, type: String

        # @return [Object, nil] Passphrase source to decrypt any input private keys with.
        attribute :privatekey_passphrase

        # @return [String, nil] File to read private key from.
        attribute :privatekey_path
        validates :privatekey_path, type: String

        # @return [:present, :absent, nil] Whether the file should exist or not. All parameters except C(path) are ignored when state is C(absent).
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] PKCS#12 file path to parse.
        attribute :src
        validates :src, type: String
      end
    end
  end
end
