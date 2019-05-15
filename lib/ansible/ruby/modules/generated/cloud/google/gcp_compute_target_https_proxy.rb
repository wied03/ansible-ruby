# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Represents a TargetHttpsProxy resource, which is used by one or more global forwarding rule to route incoming HTTPS requests to a URL map.
      class Gcp_compute_target_https_proxy < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] An optional description of this resource.
        attribute :description
        validates :description, type: String

        # @return [String] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:NONE, :ENABLE, :DISABLE, nil] Specifies the QUIC override policy for this resource. This determines whether the load balancer will attempt to negotiate QUIC with clients or not. Can specify one of NONE, ENABLE, or DISABLE. If NONE is specified, uses the QUIC policy with no user overrides, which is equivalent to DISABLE. Not specifying this field is equivalent to specifying NONE.
        attribute :quic_override
        validates :quic_override, inclusion: {:in=>[:NONE, :ENABLE, :DISABLE], :message=>"%{value} needs to be :NONE, :ENABLE, :DISABLE"}, allow_nil: true

        # @return [Object] A list of SslCertificate resources that are used to authenticate connections between users and the load balancer. Currently, exactly one SSL certificate must be specified.
        attribute :ssl_certificates
        validates :ssl_certificates, presence: true

        # @return [Object] A reference to the UrlMap resource that defines the mapping from URL to the BackendService.
        attribute :url_map
        validates :url_map, presence: true
      end
    end
  end
end
