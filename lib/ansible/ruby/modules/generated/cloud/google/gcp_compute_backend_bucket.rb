# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Backend buckets allow you to use Google Cloud Storage buckets with HTTP(S) load balancing.
      # An HTTP(S) load balancer can direct traffic to specified URLs to a backend bucket rather than a backend service. It can send requests for static content to a Cloud Storage bucket and requests for dynamic content a virtual machine instance.
      class Gcp_compute_backend_bucket < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Cloud Storage bucket name.
        attribute :bucket_name
        validates :bucket_name, presence: true, type: String

        # @return [String, nil] An optional textual description of the resource; provided by the client when the resource is created.
        attribute :description
        validates :description, type: String

        # @return [Symbol, nil] If true, enable Cloud CDN for this BackendBucket.
        attribute :enable_cdn
        validates :enable_cdn, type: Symbol

        # @return [String] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035.  Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
        attribute :name
        validates :name, presence: true, type: String
      end
    end
  end
end
