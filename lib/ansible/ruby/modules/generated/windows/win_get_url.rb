# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Downloads files from HTTP, HTTPS, or FTP to the remote server. The remote server I(must) have direct access to the remote resource.
      # For non-Windows targets, use the M(get_url) module instead.
      class Win_get_url < Base
        # @return [String] The full URL of a file to download.
        attribute :url
        validates :url, presence: true, type: String

        # @return [String] The location to save the file at the URL.,Be sure to include a filename and extension as appropriate.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [:yes, :no, nil] If C(yes), will always download the file. If C(no), will only download the file if it does not exist or the remote file has been modified more recently than the local file.,This works by sending an http HEAD request to retrieve last modified time of the requested resource, so for this to work, the remote web server must support HEAD requests.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Hash, nil] Add custom HTTP headers to a request (as a dictionary).
        attribute :headers
        validates :headers, type: Hash

        # @return [String, nil] Basic authentication username.
        attribute :url_username
        validates :url_username, type: String

        # @return [String, nil] Basic authentication password.
        attribute :url_password
        validates :url_password, type: String

        # @return [:yes, :no, nil] If C(yes), will add a Basic authentication header on the initial request.,If C(no), will use Microsoft's WebClient to handle authentication.
        attribute :force_basic_auth
        validates :force_basic_auth, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] This option is deprecated since v2.4, please use C(validate_certs) instead.,If C(yes), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :skip_certificate_validation
        validates :skip_certificate_validation, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.,If C(skip_certificate_validation) was set, it overrides this option.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] The full URL of the proxy server to download through.
        attribute :proxy_url
        validates :proxy_url, type: String

        # @return [String, nil] Proxy authentication username.
        attribute :proxy_username
        validates :proxy_username, type: String

        # @return [String, nil] Proxy authentication password.
        attribute :proxy_password
        validates :proxy_password, type: String

        # @return [:yes, :no, nil] If C(no), it will not use a proxy, even if one is defined in an environment variable on the target hosts.
        attribute :use_proxy
        validates :use_proxy, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] Timeout in seconds for URL request.
        attribute :timeout
        validates :timeout, type: Integer
      end
    end
  end
end
