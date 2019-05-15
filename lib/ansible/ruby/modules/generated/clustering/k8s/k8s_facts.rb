# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Use the OpenShift Python client to perform read operations on K8s objects.
      # Access to the full range of K8s APIs.
      # Authenticate using either a config file, certificates, password or token.
      # Supports check mode.
      class K8s_facts < Base
        # @return [String, nil] Use to specify the API version. in conjunction with I(kind), I(name), and I(namespace) to identify a specific object.
        attribute :api_version
        validates :api_version, type: String

        # @return [String] Use to specify an object model. Use in conjunction with I(api_version), I(name), and I(namespace) to identify a specific object.
        attribute :kind
        validates :kind, presence: true, type: String

        # @return [String, nil] Use to specify an object name.  Use in conjunction with I(api_version), I(kind) and I(namespace) to identify a specific object.
        attribute :name
        validates :name, type: String

        # @return [String, nil] Use to specify an object namespace. Use in conjunction with I(api_version), I(kind), and I(name) to identify a specfic object.
        attribute :namespace
        validates :namespace, type: String

        # @return [Array<String>, String, nil] List of label selectors to use to filter results
        attribute :label_selectors
        validates :label_selectors, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of field selectors to use to filter results
        attribute :field_selectors
        validates :field_selectors, type: TypeGeneric.new(String)
      end
    end
  end
end
