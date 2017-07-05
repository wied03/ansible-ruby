# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This is a wrapper module around keytool. Which can be used to import/remove certificates from a given java keystore.
      class Java_cert < Base
        # @return [Object, nil] Basic URL to fetch SSL certificate from. One of cert_url or cert_path is required to load certificate.
        attribute :cert_url

        # @return [Integer, nil] Port to connect to URL. This will be used to create server URL:PORT
        attribute :cert_port
        validates :cert_port, type: Integer

        # @return [Object, nil] Local path to load certificate from. One of cert_url or cert_path is required to load certificate.
        attribute :cert_path

        # @return [Object, nil] Imported certificate alias.
        attribute :cert_alias

        # @return [Object, nil] Path to keystore.
        attribute :keystore_path

        # @return [Object] Keystore password.
        attribute :keystore_pass
        validates :keystore_pass, presence: true

        # @return [Object, nil] Create keystore if it doesn't exist
        attribute :keystore_create

        # @return [String, nil] Path to keytool binary if not used we search in PATH for it.
        attribute :executable
        validates :executable, type: String

        # @return [:present, :absent, nil] Defines action which can be either certificate import or removal.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
