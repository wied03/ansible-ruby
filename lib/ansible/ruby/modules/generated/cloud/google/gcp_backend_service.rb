# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or Destroy a Backend Service.  See U(https://cloud.google.com/compute/docs/load-balancing/http/backend-service) for an overview. Full install/configuration instructions for the Google Cloud modules can be found in the comments of ansible/test/gce_tests.py.
      class Gcp_backend_service < Base
        # @return [String] Name of the Backend Service.
        attribute :backend_service_name
        validates :backend_service_name, presence: true, type: String

        # @return [Array<Hash>, Hash] List of backends that make up the backend service. A backend is made up of an instance group and optionally several other parameters.  See U(https://cloud.google.com/compute/docs/reference/latest/backendServices) for details.
        attribute :backends
        validates :backends, presence: true, type: TypeGeneric.new(Hash)

        # @return [Array<String>, String] List of healthchecks. Only one healthcheck is supported.
        attribute :healthchecks
        validates :healthchecks, presence: true, type: TypeGeneric.new(String)

        # @return [Object, nil] If true, enable Cloud CDN for this Backend Service.
        attribute :enable_cdn

        # @return [String, nil] Name of the port on the managed instance group (MIG) that backend services can forward data to. Required for external load balancing.
        attribute :port_name
        validates :port_name, type: String

        # @return [Object, nil] The protocol this Backend Service uses to communicate with backends. Possible values are HTTP, HTTPS, TCP, and SSL. The default is HTTP.
        attribute :protocol

        # @return [Integer, nil] How many seconds to wait for the backend before considering it a failed request. Default is 30 seconds. Valid range is 1-86400.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [String, nil] Service account email
        attribute :service_account_email
        validates :service_account_email, type: String

        # @return [String, nil] Path to the JSON file associated with the service account email.
        attribute :credentials_file
        validates :credentials_file, type: String

        # @return [String, nil] GCE project ID.
        attribute :project_id
        validates :project_id, type: String

        # @return [:absent, :present, nil] Desired state of the resource
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
