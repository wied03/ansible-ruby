# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Kubernetes < Base
        # @return [String] The IPv4 API endpoint of the Kubernetes cluster.
        attribute :api_endpoint
        validates :api_endpoint, presence: true, type: String

        # @return [Hash] The Kubernetes YAML data to send to the API I(endpoint). This option is mutually exclusive with C('file_reference').
        attribute :inline_data
        validates :inline_data, presence: true, type: Hash

        # @return [String, nil] Specify full path to a Kubernets YAML file to send to API I(endpoint). This option is mutually exclusive with C('inline_data').
        attribute :file_reference
        validates :file_reference, type: String

        # @return [Object, nil] Certificate Authority data for Kubernetes server. Should be in either standard PEM format or base64 encoded PEM data. Note that certificate verification is broken until ansible supports a version of 'match_hostname' that can match the IP address against the CA data.
        attribute :certificate_authority_data

        # @return [:present, :absent, :update, :replace] The desired action to take on the Kubernetes data.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :update, :replace], :message=>"%{value} needs to be :present, :absent, :update, :replace"}

        # @return [String, nil] The HTTP Basic Auth password for the API I(endpoint). This should be set unless using the C('insecure') option.
        attribute :url_password
        validates :url_password, type: String

        # @return [String, nil] The HTTP Basic Auth username for the API I(endpoint). This should be set unless using the C('insecure') option.
        attribute :url_username
        validates :url_username, type: String

        # @return [Boolean, nil] Reverts the connection to using HTTP instead of HTTPS. This option should only be used when execuing the M('kubernetes') module local to the Kubernetes cluster using the insecure local port (locahost:8080 by default).
        attribute :insecure
        validates :insecure, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Enable/disable certificate validation. Note that this is set to C(false) until Ansible can support IP address based certificate hostname matching (exists in >= python3.5.0).
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
