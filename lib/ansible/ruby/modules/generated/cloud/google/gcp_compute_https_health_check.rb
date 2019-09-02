# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # An HttpsHealthCheck resource. This resource defines a template for how individual VMs should be checked for health, via HTTPS.
      class Gcp_compute_https_health_check < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] How often (in seconds) to send a health check. The default value is 5 seconds.
        attribute :check_interval_sec

        # @return [Object, nil] An optional description of this resource. Provide this property when you create the resource.
        attribute :description

        # @return [Integer, nil] A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
        attribute :healthy_threshold
        validates :healthy_threshold, type: Integer

        # @return [Object, nil] The value of the host header in the HTTPS health check request. If left empty (default value), the public IP on behalf of which this health check is performed will be used.
        attribute :host

        # @return [String] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035.  Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer, nil] The TCP port number for the HTTPS health check request.,The default value is 80.
        attribute :port
        validates :port, type: Integer

        # @return [Object, nil] The request path of the HTTPS health check request.,The default value is /.
        attribute :request_path

        # @return [Integer, nil] How long (in seconds) to wait before claiming failure.,The default value is 5 seconds.  It is invalid for timeoutSec to have greater value than checkIntervalSec.
        attribute :timeout_sec
        validates :timeout_sec, type: Integer

        # @return [Integer, nil] A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
        attribute :unhealthy_threshold
        validates :unhealthy_threshold, type: Integer
      end
    end
  end
end
