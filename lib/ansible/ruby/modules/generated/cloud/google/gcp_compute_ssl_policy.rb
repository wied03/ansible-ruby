# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Represents a SSL policy. SSL policies give you the ability to control the features of SSL that your SSL proxy or HTTPS load balancer negotiates.
      class Gcp_compute_ssl_policy < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] An optional description of this resource.
        attribute :description

        # @return [String] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:COMPATIBLE, :MODERN, :RESTRICTED, :CUSTOM, nil] Profile specifies the set of SSL features that can be used by the load balancer when negotiating SSL with clients. This can be one of `COMPATIBLE`, `MODERN`, `RESTRICTED`, or `CUSTOM`. If using `CUSTOM`, the set of SSL features to enable must be specified in the `customFeatures` field.
        attribute :profile
        validates :profile, expression_inclusion: {:in=>[:COMPATIBLE, :MODERN, :RESTRICTED, :CUSTOM], :message=>"%{value} needs to be :COMPATIBLE, :MODERN, :RESTRICTED, :CUSTOM"}, allow_nil: true

        # @return [:TLS_1_0, :TLS_1_1, :TLS_1_2, nil] The minimum version of SSL protocol that can be used by the clients to establish a connection with the load balancer. This can be one of `TLS_1_0`, `TLS_1_1`, `TLS_1_2`.
        attribute :min_tls_version
        validates :min_tls_version, expression_inclusion: {:in=>[:TLS_1_0, :TLS_1_1, :TLS_1_2], :message=>"%{value} needs to be :TLS_1_0, :TLS_1_1, :TLS_1_2"}, allow_nil: true

        # @return [Array<String>, String, nil] A list of features enabled when the selected profile is CUSTOM. The method returns the set of features that can be specified in this list. This field must be empty if the profile is not CUSTOM.
        attribute :custom_features
        validates :custom_features, type: TypeGeneric.new(String)
      end
    end
  end
end
