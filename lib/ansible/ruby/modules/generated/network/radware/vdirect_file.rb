# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Uploads a new or updates an existing configuration template or workflow template into the Radware vDirect server. All parameters may be set as environment variables.
      class Vdirect_file < Base
        # @return [String] Primary vDirect server IP address, may be set as VDIRECT_IP environment variable.
        attribute :vdirect_ip
        validates :vdirect_ip, presence: true, type: String

        # @return [String] vDirect server username, may be set as VDIRECT_USER environment variable.
        attribute :vdirect_user
        validates :vdirect_user, presence: true, type: String

        # @return [String] vDirect server password, may be set as VDIRECT_PASSWORD environment variable.
        attribute :vdirect_password
        validates :vdirect_password, presence: true, type: String

        # @return [Object, nil] Secondary vDirect server IP address, may be set as VDIRECT_SECONDARY_IP environment variable.
        attribute :vdirect_secondary_ip

        # @return [String, nil] Wait for async operation to complete, may be set as VDIRECT_WAIT environment variable.
        attribute :vdirect_wait
        validates :vdirect_wait, type: String

        # @return [Integer, nil] vDirect server HTTPS port number, may be set as VDIRECT_HTTPS_PORT environment variable.
        attribute :vdirect_https_port
        validates :vdirect_https_port, type: Integer

        # @return [Integer, nil] vDirect server HTTP port number, may be set as VDIRECT_HTTP_PORT environment variable.
        attribute :vdirect_http_port
        validates :vdirect_http_port, type: Integer

        # @return [Integer, nil] Amount of time to wait for async operation completion [seconds],,may be set as VDIRECT_TIMEOUT environment variable.
        attribute :vdirect_timeout
        validates :vdirect_timeout, type: Integer

        # @return [String, nil] If C(no), an HTTP connection will be used instead of the default HTTPS connection,,may be set as VDIRECT_HTTPS or VDIRECT_USE_SSL environment variable.
        attribute :vdirect_use_ssl
        validates :vdirect_use_ssl, type: String

        # @return [String, nil] If C(no), SSL certificates will not be validated,,may be set as VDIRECT_VALIDATE_CERTS or VDIRECT_VERIFY environment variable.,This should only set to C(no) used on personally controlled sites using self-signed certificates.
        attribute :vdirect_validate_certs
        validates :vdirect_validate_certs, type: String

        # @return [String] vDirect runnable file name to be uploaded.,May be velocity configuration template (.vm) or workflow template zip file (.zip).
        attribute :file_name
        validates :file_name, presence: true, type: String
      end
    end
  end
end
