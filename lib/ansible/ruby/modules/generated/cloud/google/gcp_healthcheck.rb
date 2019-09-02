# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, Update or Destroy a Healthcheck. Currently only HTTP and HTTPS Healthchecks are supported. Healthchecks are used to monitor individual instances, managed instance groups and/or backend services. Healtchecks are reusable.
      # Visit U(https://cloud.google.com/compute/docs/load-balancing/health-checks) for an overview of Healthchecks on GCP.
      # See U(https://cloud.google.com/compute/docs/reference/latest/httpHealthChecks) for API details on HTTP Healthchecks.
      # See U(https://cloud.google.com/compute/docs/reference/latest/httpsHealthChecks) for more details on the HTTPS Healtcheck API.
      class Gcp_healthcheck < Base
        # @return [Integer, nil] How often (in seconds) to send a health check.
        attribute :check_interval
        validates :check_interval, type: Integer

        # @return [String] Name of the Healthcheck.
        attribute :healthcheck_name
        validates :healthcheck_name, presence: true, type: String

        # @return [:HTTP, :HTTPS] Type of Healthcheck.
        attribute :healthcheck_type
        validates :healthcheck_type, presence: true, expression_inclusion: {:in=>[:HTTP, :HTTPS], :message=>"%{value} needs to be :HTTP, :HTTPS"}

        # @return [String] The value of the host header in the health check request. If left empty, the public IP on behalf of which this health check is performed will be used.
        attribute :host_header
        validates :host_header, presence: true, type: String

        # @return [Object, nil] The TCP port number for the health check request. The default value is 443 for HTTPS and 80 for HTTP.
        attribute :port

        # @return [String, nil] The request path of the HTTPS health check request.
        attribute :request_path
        validates :request_path, type: String

        # @return [:present, :absent] State of the Healthcheck.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Integer, nil] How long (in seconds) to wait for a response before claiming failure. It is invalid for timeout to have a greater value than check_interval.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Integer, nil] A so-far healthy instance will be marked unhealthy after this many consecutive failures.
        attribute :unhealthy_threshold
        validates :unhealthy_threshold, type: Integer

        # @return [Integer, nil] A so-far unhealthy instance will be marked healthy after this many consecutive successes.
        attribute :healthy_threshold
        validates :healthy_threshold, type: Integer

        # @return [String, nil] service account email
        attribute :service_account_email
        validates :service_account_email, type: String

        # @return [:bigquery, :"cloud-platform", :"compute-ro", :"compute-rw", :"useraccounts-ro", :"useraccounts-rw", :datastore, :"logging-write", :monitoring, :"sql-admin", :"storage-full", :"storage-ro", :"storage-rw", :taskqueue, :"userinfo-email", nil] service account permissions (see U(https://cloud.google.com/sdk/gcloud/reference/compute/instances/create), --scopes section for detailed information)
        attribute :service_account_permissions
        validates :service_account_permissions, expression_inclusion: {:in=>[:bigquery, :"cloud-platform", :"compute-ro", :"compute-rw", :"useraccounts-ro", :"useraccounts-rw", :datastore, :"logging-write", :monitoring, :"sql-admin", :"storage-full", :"storage-ro", :"storage-rw", :taskqueue, :"userinfo-email"], :message=>"%{value} needs to be :bigquery, :\"cloud-platform\", :\"compute-ro\", :\"compute-rw\", :\"useraccounts-ro\", :\"useraccounts-rw\", :datastore, :\"logging-write\", :monitoring, :\"sql-admin\", :\"storage-full\", :\"storage-ro\", :\"storage-rw\", :taskqueue, :\"userinfo-email\""}, allow_nil: true

        # @return [String, nil] Path to the JSON file associated with the service account email
        attribute :credentials_file
        validates :credentials_file, type: String

        # @return [String, nil] Your GCP project ID
        attribute :project_id
        validates :project_id, type: String
      end
    end
  end
end
