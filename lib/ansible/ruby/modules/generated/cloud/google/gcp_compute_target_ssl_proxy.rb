# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Represents a TargetSslProxy resource, which is used by one or more global forwarding rule to route incoming SSL requests to a backend service.
      class Gcp_compute_target_ssl_proxy < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] An optional description of this resource.
        attribute :description
        validates :description, type: String

        # @return [String] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:NONE, :PROXY_V1, nil] Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
        attribute :proxy_header
        validates :proxy_header, expression_inclusion: {:in=>[:NONE, :PROXY_V1], :message=>"%{value} needs to be :NONE, :PROXY_V1"}, allow_nil: true

        # @return [Object] A reference to the BackendService resource.
        attribute :service
        validates :service, presence: true

        # @return [Object] A list of SslCertificate resources that are used to authenticate connections between users and the load balancer. Currently, exactly one SSL certificate must be specified.
        attribute :ssl_certificates
        validates :ssl_certificates, presence: true
      end
    end
  end
end
