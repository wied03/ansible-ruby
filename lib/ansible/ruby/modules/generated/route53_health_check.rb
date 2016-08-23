# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Route53_health_check < Base
        # @return [String] Specifies the action to take.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Object] IP address of the end-point to check. Either this or `fqdn` has to be provided.
        attribute :ip_address

        # @return [Object] The port on the endpoint on which you want Amazon Route 53 to perform health checks. Required for TCP checks.
        attribute :port

        # @return [String] The type of health check that you want to create, which indicates how Amazon Route 53 determines whether an endpoint is healthy.
        attribute :type
        validates :type, presence: true, inclusion: {:in=>[:HTTP, :HTTPS, :HTTP_STR_MATCH, :HTTPS_STR_MATCH, :TCP], :message=>"%{value} needs to be :HTTP, :HTTPS, :HTTP_STR_MATCH, :HTTPS_STR_MATCH, :TCP"}

        # @return [String] The path that you want Amazon Route 53 to request when performing health checks. The path can be any value for which your endpoint will return an HTTP status code of 2xx or 3xx when the endpoint is healthy, for example the file /docs/route53-health-check.html.,Required for all checks except TCP.,The path must begin with a /,Maximum 255 characters.
        attribute :resource_path
        validates :resource_path, type: String

        # @return [String] Domain name of the endpoint to check. Either this or `ip_address` has to be provided. When both are given the `fqdn` is used in the `Host:` header of the HTTP request.
        attribute :fqdn
        validates :fqdn, type: String

        # @return [String] If the check type is HTTP_STR_MATCH or HTTP_STR_MATCH, the string that you want Amazon Route 53 to search for in the response body from the specified resource. If the string appears in the first 5120 bytes of the response body, Amazon Route 53 considers the resource healthy.
        attribute :string_match
        validates :string_match, type: String

        # @return [Fixnum] The number of seconds between the time that Amazon Route 53 gets a response from your endpoint and the time that it sends the next health-check request.
        attribute :request_interval
        validates :request_interval, presence: true, inclusion: {:in=>[10, 30], :message=>"%{value} needs to be 10, 30"}

        # @return [Fixnum] The number of consecutive health checks that an endpoint must pass or fail for Amazon Route 53 to change the current status of the endpoint from unhealthy to healthy or vice versa.
        attribute :failure_threshold
        validates :failure_threshold, presence: true, inclusion: {:in=>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10], :message=>"%{value} needs to be 1, 2, 3, 4, 5, 6, 7, 8, 9, 10"}
      end
    end
  end
end
