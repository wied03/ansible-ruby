# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Commits pending configuration changes on one or more Radware devices via vDirect server.
      # For Alteon ADC device, apply, sync and save actions will be performed by default. Skipping of an action is possible by explicit parameter specifying.
      # For Alteon VX Container device, no sync operation will be performed since sync action is only relevant for Alteon ADC devices.
      # For DefensePro and AppWall devices, a bulk commit action will be performed. Explicit apply, sync and save actions specifying is not relevant.
      class Vdirect_commit < Base
        # @return [String] Primary vDirect server IP address, may be set as C(VDIRECT_IP) environment variable.
        attribute :vdirect_ip
        validates :vdirect_ip, presence: true, type: String

        # @return [String] vDirect server username, may be set as C(VDIRECT_USER) environment variable.
        attribute :vdirect_user
        validates :vdirect_user, presence: true, type: String

        # @return [String] vDirect server password, may be set as C(VDIRECT_PASSWORD) environment variable.
        attribute :vdirect_password
        validates :vdirect_password, presence: true, type: String

        # @return [Object, nil] Secondary vDirect server IP address, may be set as C(VDIRECT_SECONDARY_IP) environment variable.
        attribute :vdirect_secondary_ip

        # @return [String, nil] Wait for async operation to complete, may be set as C(VDIRECT_WAIT) environment variable.
        attribute :vdirect_wait
        validates :vdirect_wait, type: String

        # @return [Integer, nil] vDirect server HTTPS port number, may be set as C(VDIRECT_HTTPS_PORT) environment variable.
        attribute :vdirect_https_port
        validates :vdirect_https_port, type: Integer

        # @return [Integer, nil] vDirect server HTTP port number, may be set as C(VDIRECT_HTTP_PORT) environment variable.
        attribute :vdirect_http_port
        validates :vdirect_http_port, type: Integer

        # @return [Integer, nil] Amount of time to wait for async operation completion [seconds],,may be set as C(VDIRECT_TIMEOUT) environment variable.
        attribute :vdirect_timeout
        validates :vdirect_timeout, type: Integer

        # @return [String, nil] If C(no), an HTTP connection will be used instead of the default HTTPS connection,,may be set as C(VDIRECT_HTTPS) or C(VDIRECT_USE_SSL) environment variable.
        attribute :vdirect_use_ssl
        validates :vdirect_use_ssl, type: String

        # @return [String, nil] If C(no), SSL certificates will not be validated,,may be set as C(VDIRECT_VALIDATE_CERTS) or C(VDIRECT_VERIFY) environment variable.,This should only set to C(no) used on personally controlled sites using self-signed certificates.
        attribute :vdirect_validate_certs
        validates :vdirect_validate_certs, type: String

        # @return [Array<String>, String] List of Radware Alteon device names for commit operations.
        attribute :devices
        validates :devices, presence: true, type: TypeGeneric.new(String)

        # @return [String, nil] If C(no), apply action will not be performed. Relevant for ADC devices only.
        attribute :apply
        validates :apply, type: String

        # @return [String, nil] If C(no), save action will not be performed. Relevant for ADC devices only.
        attribute :save
        validates :save, type: String

        # @return [String, nil] If C(no), sync action will not be performed. Relevant for ADC devices only.
        attribute :sync
        validates :sync, type: String
      end
    end
  end
end
