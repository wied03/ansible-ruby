# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can create and destroy Google Compute Engine C(loadbalancer) and C(httphealthcheck) resources.  The primary LB resource is the C(load_balancer) resource and the health check parameters are all prefixed with I(httphealthcheck). The full documentation for Google Compute Engine load balancing is at U(https://developers.google.com/compute/docs/load-balancing/).  However, the ansible module simplifies the configuration by following the libcloud model. Full install/configuration instructions for the gce* modules can be found in the comments of ansible/test/gce_tests.py.
      class Gce_lb < Base
        # @return [String, nil] the name identifier for the HTTP health check
        attribute :httphealthcheck_name
        validates :httphealthcheck_name, type: String

        # @return [Integer, nil] the TCP port to use for HTTP health checking
        attribute :httphealthcheck_port
        validates :httphealthcheck_port, type: Integer

        # @return [String, nil] the url path to use for HTTP health checking
        attribute :httphealthcheck_path
        validates :httphealthcheck_path, type: String

        # @return [Integer, nil] the duration in seconds between each health check request
        attribute :httphealthcheck_interval
        validates :httphealthcheck_interval, type: Integer

        # @return [Integer, nil] the timeout in seconds before a request is considered a failed check
        attribute :httphealthcheck_timeout
        validates :httphealthcheck_timeout, type: Integer

        # @return [Integer, nil] number of consecutive failed checks before marking a node unhealthy
        attribute :httphealthcheck_unhealthy_count
        validates :httphealthcheck_unhealthy_count, type: Integer

        # @return [Integer, nil] number of consecutive successful checks before marking a node healthy
        attribute :httphealthcheck_healthy_count
        validates :httphealthcheck_healthy_count, type: Integer

        # @return [Object, nil] host header to pass through on HTTP check requests
        attribute :httphealthcheck_host

        # @return [String, nil] name of the load-balancer resource
        attribute :name
        validates :name, type: String

        # @return [:tcp, :udp, nil] the protocol used for the load-balancer packet forwarding, tcp or udp
        attribute :protocol
        validates :protocol, expression_inclusion: {:in=>[:tcp, :udp], :message=>"%{value} needs to be :tcp, :udp"}, allow_nil: true

        # @return [String, nil] the GCE region where the load-balancer is defined
        attribute :region
        validates :region, type: String

        # @return [Object, nil] the external static IPv4 (or auto-assigned) address for the LB
        attribute :external_ip

        # @return [Object, nil] the port (range) to forward, e.g. 80 or 8000-8888 defaults to all ports
        attribute :port_range

        # @return [Array<String>, String, nil] a list of zone/nodename pairs, e.g ['us-central1-a/www-a', ...]
        attribute :members
        validates :members, type: TypeGeneric.new(String)

        # @return [:active, :present, :absent, :deleted, nil] desired state of the LB
        attribute :state
        validates :state, expression_inclusion: {:in=>[:active, :present, :absent, :deleted], :message=>"%{value} needs to be :active, :present, :absent, :deleted"}, allow_nil: true

        # @return [Object, nil] service account email
        attribute :service_account_email

        # @return [Object, nil] path to the pem file associated with the service account email This option is deprecated. Use 'credentials_file'.
        attribute :pem_file

        # @return [Object, nil] path to the JSON file associated with the service account email
        attribute :credentials_file

        # @return [Object, nil] your GCE project ID
        attribute :project_id
      end
    end
  end
end
