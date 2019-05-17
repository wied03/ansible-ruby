# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove a host to Icinga2 through the API.
      # See U(https://www.icinga.com/docs/icinga2/latest/doc/12-icinga2-api/)
      class Icinga2_host < Base
        # @return [String] HTTP, HTTPS, or FTP URL in the form (http|https|ftp)://[user[:pass]]@host.domain[:port]/path
        attribute :url
        validates :url, presence: true, type: String

        # @return [:yes, :no, nil] If C(no), it will not use a proxy, even if one is defined in an environment variable on the target hosts.
        attribute :use_proxy
        validates :use_proxy, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] The username for use in HTTP basic authentication.,This parameter can be used without C(url_password) for sites that allow empty passwords.
        attribute :url_username
        validates :url_username, type: String

        # @return [String, nil] The password for use in HTTP basic authentication.,If the C(url_username) parameter is not specified, the C(url_password) parameter will not be used.
        attribute :url_password
        validates :url_password, type: String

        # @return [:yes, :no, nil] httplib2, the library used by the uri module only sends authentication information when a webservice responds to an initial request with a 401 status. Since some basic auth services do not properly send a 401, logins will fail. This option forces the sending of the Basic authentication header upon initial request.
        attribute :force_basic_auth
        validates :force_basic_auth, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] PEM formatted certificate chain file to be used for SSL client authentication. This file can also include the key as well, and if the key is included, C(client_key) is not required.
        attribute :client_cert

        # @return [Object, nil] PEM formatted file that contains your private key to be used for SSL client authentication. If C(client_cert) contains both the certificate and key, this option is not required.
        attribute :client_key

        # @return [:present, :absent, nil] Apply feature state.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Name used to create / delete the host. This does not need to be the FQDN, but does needs to be unique.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] The zone from where this host should be polled.
        attribute :zone

        # @return [Object, nil] The template used to define the host.,Template cannot be modified after object creation.
        attribute :template

        # @return [String, nil] The command used to check if the host is alive.
        attribute :check_command
        validates :check_command, type: String

        # @return [String, nil] The name used to display the host.
        attribute :display_name
        validates :display_name, type: String

        # @return [String] The IP address of the host.
        attribute :ip
        validates :ip, presence: true, type: String

        # @return [Object, nil] List of variables.
        attribute :variables
      end
    end
  end
end
