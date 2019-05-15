# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module generates a self-signed certificate that can be used by GlobalProtect client, SSL connector, or
      # otherwise. Root certificate must be preset on the system first. This module depends on paramiko for ssh.
      class Panos_cert_gen_ssh < Base
        # @return [String] IP address (or hostname) of PAN-OS device being configured.
        attribute :ip_address
        validates :ip_address, presence: true, type: String

        # @return [Object] Location of the filename that is used for the auth. Either I(key_filename) or I(password) is required.
        attribute :key_filename
        validates :key_filename, presence: true

        # @return [String] Password credentials to use for auth. Either I(key_filename) or I(password) is required.
        attribute :password
        validates :password, presence: true, type: String

        # @return [String] Human friendly certificate name (not CN but just a friendly name).
        attribute :cert_friendly_name
        validates :cert_friendly_name, presence: true, type: String

        # @return [String] Certificate CN (common name) embedded in the certificate signature.
        attribute :cert_cn
        validates :cert_cn, presence: true, type: String

        # @return [String] Undersigning authority (CA) that MUST already be presents on the device.
        attribute :signed_by
        validates :signed_by, presence: true, type: String

        # @return [String, nil] Number of bits used by the RSA algorithm for the certificate generation.
        attribute :rsa_nbits
        validates :rsa_nbits, type: String
      end
    end
  end
end
