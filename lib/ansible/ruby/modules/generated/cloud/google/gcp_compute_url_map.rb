# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # UrlMaps are used to route requests to a backend service based on rules that you define for the host and path of an incoming URL.
      class Gcp_compute_url_map < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] A reference to BackendService resource if none of the hostRules match.
        attribute :default_service
        validates :default_service, presence: true, type: String

        # @return [Object, nil] An optional description of this resource. Provide this property when you create the resource.
        attribute :description

        # @return [Object, nil] The list of HostRules to use against the URL.
        attribute :host_rules

        # @return [String, nil] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] The list of named PathMatchers to use against the URL.
        attribute :path_matchers

        # @return [Object, nil] The list of expected URL mappings. Request to update this UrlMap will succeed only if all of the test cases pass.
        attribute :tests
      end
    end
  end
end
