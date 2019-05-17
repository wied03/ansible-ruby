# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates a BackendService resource in the specified project using the data included in the request.
      class Gcp_compute_backend_service < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Lifetime of cookies in seconds if session_affinity is GENERATED_COOKIE. If set to 0, the cookie is non-persistent and lasts only until the end of the browser session (or equivalent). The maximum allowed value for TTL is one day.,When the load balancing scheme is INTERNAL, this field is not used.
        attribute :affinity_cookie_ttl_sec

        # @return [Array<Hash>, Hash, nil] The list of backends that serve this BackendService.
        attribute :backends
        validates :backends, type: TypeGeneric.new(Hash)

        # @return [Object, nil] Cloud CDN configuration for this BackendService.
        attribute :cdn_policy

        # @return [Object, nil] Settings for connection draining.
        attribute :connection_draining

        # @return [Object, nil] An optional description of this resource.
        attribute :description

        # @return [Symbol, nil] If true, enable Cloud CDN for this BackendService.,When the load balancing scheme is INTERNAL, this field is not used.
        attribute :enable_cdn
        validates :enable_cdn, type: Symbol

        # @return [Array<String>, String, nil] The list of URLs to the HttpHealthCheck or HttpsHealthCheck resource for health checking this BackendService. Currently at most one health check can be specified, and a health check is required.,For internal load balancing, a URL to a HealthCheck resource must be specified instead.
        attribute :health_checks
        validates :health_checks, type: TypeGeneric.new(String)

        # @return [Object, nil] Settings for enabling Cloud Identity Aware Proxy.
        attribute :iap

        # @return [:INTERNAL, :EXTERNAL, nil] Indicates whether the backend service will be used with internal or external load balancing. A backend service created for one type of load balancing cannot be used with the other.
        attribute :load_balancing_scheme
        validates :load_balancing_scheme, inclusion: {:in=>[:INTERNAL, :EXTERNAL], :message=>"%{value} needs to be :INTERNAL, :EXTERNAL"}, allow_nil: true

        # @return [String, nil] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] Name of backend port. The same name should appear in the instance groups referenced by this service. Required when the load balancing scheme is EXTERNAL.,When the load balancing scheme is INTERNAL, this field is not used.
        attribute :port_name

        # @return [:HTTP, :HTTPS, :TCP, :SSL, nil] The protocol this BackendService uses to communicate with backends.,Possible values are HTTP, HTTPS, TCP, and SSL. The default is HTTP.,For internal load balancing, the possible values are TCP and UDP, and the default is TCP.
        attribute :protocol
        validates :protocol, inclusion: {:in=>[:HTTP, :HTTPS, :TCP, :SSL], :message=>"%{value} needs to be :HTTP, :HTTPS, :TCP, :SSL"}, allow_nil: true

        # @return [Object, nil] The region where the regional backend service resides.,This field is not applicable to global backend services.
        attribute :region

        # @return [:NONE, :CLIENT_IP, :GENERATED_COOKIE, :CLIENT_IP_PROTO, :CLIENT_IP_PORT_PROTO, nil] Type of session affinity to use. The default is NONE.,When the load balancing scheme is EXTERNAL, can be NONE, CLIENT_IP, or GENERATED_COOKIE.,When the load balancing scheme is INTERNAL, can be NONE, CLIENT_IP, CLIENT_IP_PROTO, or CLIENT_IP_PORT_PROTO.,When the protocol is UDP, this field is not used.
        attribute :session_affinity
        validates :session_affinity, inclusion: {:in=>[:NONE, :CLIENT_IP, :GENERATED_COOKIE, :CLIENT_IP_PROTO, :CLIENT_IP_PORT_PROTO], :message=>"%{value} needs to be :NONE, :CLIENT_IP, :GENERATED_COOKIE, :CLIENT_IP_PROTO, :CLIENT_IP_PORT_PROTO"}, allow_nil: true

        # @return [Integer, nil] How many seconds to wait for the backend before considering it a failed request. Default is 30 seconds. Valid range is [1, 86400].
        attribute :timeout_sec
        validates :timeout_sec, type: Integer
      end
    end
  end
end
