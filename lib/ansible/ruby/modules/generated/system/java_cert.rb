# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This is a wrapper module around keytool. Which can be used to import/remove certificates from a given java keystore.
      class Java_cert < Base
        # @return [String, nil] Basic URL to fetch SSL certificate from. One of cert_url or cert_path is required to load certificate.
        attribute :cert_url
        validates :cert_url, type: String

        # @return [Integer, nil] Port to connect to URL. This will be used to create server URL:PORT
        attribute :cert_port
        validates :cert_port, type: Integer

        # @return [Object, nil] Local path to load certificate from. One of cert_url or cert_path is required to load certificate.
        attribute :cert_path

        # @return [String, nil] Imported certificate alias.
        attribute :cert_alias
        validates :cert_alias, type: String

        # @return [String, nil] Local path to load PKCS12 keystore from.
        attribute :pkcs12_path
        validates :pkcs12_path, type: String

        # @return [String, nil] Password for importing from PKCS12 keystore.
        attribute :pkcs12_password
        validates :pkcs12_password, type: String

        # @return [Integer, nil] Alias in the PKCS12 keystore.
        attribute :pkcs12_alias
        validates :pkcs12_alias, type: Integer

        # @return [String, nil] Path to keystore.
        attribute :keystore_path
        validates :keystore_path, type: String

        # @return [String] Keystore password.
        attribute :keystore_pass
        validates :keystore_pass, presence: true, type: String

        # @return [Boolean, nil] Create keystore if it doesn't exist
        attribute :keystore_create
        validates :keystore_create, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Path to keytool binary if not used we search in PATH for it.
        attribute :executable
        validates :executable, type: String

        # @return [:absent, :present, nil] Defines action which can be either certificate import or removal.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
