# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Gce_lb < Base
        # @return [String] the name identifier for the HTTP health check
        attribute :httphealthcheck_name
        validates :httphealthcheck_name, type: String

        # @return [Fixnum] the TCP port to use for HTTP health checking
        attribute :httphealthcheck_port
        validates :httphealthcheck_port, type: Fixnum

        # @return [String] the url path to use for HTTP health checking
        attribute :httphealthcheck_path
        validates :httphealthcheck_path, type: String

        # @return [Fixnum] the duration in seconds between each health check request
        attribute :httphealthcheck_interval
        validates :httphealthcheck_interval, type: Fixnum

        # @return [Fixnum] the timeout in seconds before a request is considered a failed check
        attribute :httphealthcheck_timeout
        validates :httphealthcheck_timeout, type: Fixnum

        # @return [Fixnum] number of consecutive failed checks before marking a node unhealthy
        attribute :httphealthcheck_unhealthy_count
        validates :httphealthcheck_unhealthy_count, type: Fixnum

        # @return [Fixnum] number of consecutive successful checks before marking a node healthy
        attribute :httphealthcheck_healthy_count
        validates :httphealthcheck_healthy_count, type: Fixnum

        # @return [Object] host header to pass through on HTTP check requests
        attribute :httphealthcheck_host

        # @return [String] name of the load-balancer resource
        attribute :name
        validates :name, type: String

        # @return [String] the protocol used for the load-balancer packet forwarding, tcp or udp
        attribute :protocol
        validates :protocol, inclusion: {:in=>[:tcp, :udp], :message=>"%{value} needs to be :tcp, :udp"}, allow_nil: true

        # @return [String] the GCE region where the load-balancer is defined
        attribute :region
        validates :region, type: String

        # @return [Object] the external static IPv4 (or auto-assigned) address for the LB
        attribute :external_ip

        # @return [Object] the port (range) to forward, e.g. 80 or 8000-8888 defaults to all ports
        attribute :port_range

        # @return [Array] a list of zone/nodename pairs, e.g ['us-central1-a/www-a', ...]
        attribute :members
        validates :members, type: Array

        # @return [String] desired state of the LB
        attribute :state
        validates :state, inclusion: {:in=>[:active, :present, :absent, :deleted], :message=>"%{value} needs to be :active, :present, :absent, :deleted"}, allow_nil: true

        # @return [Object] service account email
        attribute :service_account_email

        # @return [Object] path to the pem file associated with the service account email This option is deprecated. Use 'credentials_file'.
        attribute :pem_file

        # @return [Object] path to the JSON file associated with the service account email
        attribute :credentials_file

        # @return [Object] your GCE project ID
        attribute :project_id
      end
    end
  end
end
