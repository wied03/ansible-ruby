# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can manage Kubernetes resources on an existing cluster using the Kubernetes server API. Users can specify in-line API data, or specify an existing Kubernetes YAML file.
      # Currently, this module (1) Only supports HTTP Basic Auth (2) Only supports 'strategic merge' for update, http://goo.gl/fCPYxT SSL certs are not working, use C(validate_certs=off) to disable.
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

        # @return [:"JSON Patch", :"Merge Patch", :"Strategic Merge Patch", nil] Specify patch operation for Kubernetes resource update.,For details, see the description of PATCH operations at U(https://github.com/kubernetes/kubernetes/blob/release-1.5/docs/devel/api-conventions.md#patch-operations).
        attribute :patch_operation
        validates :patch_operation, inclusion: {:in=>[:"JSON Patch", :"Merge Patch", :"Strategic Merge Patch"], :message=>"%{value} needs to be :\"JSON Patch\", :\"Merge Patch\", :\"Strategic Merge Patch\""}, allow_nil: true

        # @return [Object, nil] Certificate Authority data for Kubernetes server. Should be in either standard PEM format or base64 encoded PEM data. Note that certificate verification is broken until ansible supports a version of 'match_hostname' that can match the IP address against the CA data.
        attribute :certificate_authority_data

        # @return [:absent, :present, :replace, :update] The desired action to take on the Kubernetes data.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:absent, :present, :replace, :update], :message=>"%{value} needs to be :absent, :present, :replace, :update"}

        # @return [String, nil] The HTTP Basic Auth password for the API I(endpoint). This should be set unless using the C('insecure') option.
        attribute :url_password
        validates :url_password, type: String

        # @return [String, nil] The HTTP Basic Auth username for the API I(endpoint). This should be set unless using the C('insecure') option.
        attribute :url_username
        validates :url_username, type: String

        # @return [Boolean, nil] Reverts the connection to using HTTP instead of HTTPS. This option should only be used when execuing the M('kubernetes') module local to the Kubernetes cluster using the insecure local port (locahost:8080 by default).
        attribute :insecure
        validates :insecure, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Enable/disable certificate validation. Note that this is set to C(false) until Ansible can support IP address based certificate hostname matching (exists in >= python3.5.0).
        attribute :validate_certs
        validates :validate_certs, type: String
      end
    end
  end
end
