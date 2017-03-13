# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates or terminates Google Compute Engine (GCE) instances.  See U(https://cloud.google.com/products/compute-engine) for an overview. Full install/configuration instructions for the gce* modules can be found in the comments of ansible/test/gce_tests.py.
      class Gce < Base
        # @return [String, nil] image string to use for the instance
        attribute :image
        validates :image, type: String

        # @return [Object, nil] a comma-separated list of instance names to create or destroy
        attribute :instance_names

        # @return [String, nil] machine type to use for the instance, use 'n1-standard-1' by default
        attribute :machine_type
        validates :machine_type, type: String

        # @return [Hash, nil] a hash/dictionary of custom data for the instance; '{"key":"value", ...}'
        attribute :metadata
        validates :metadata, type: Hash

        # @return [String, nil] service account email
        attribute :service_account_email
        validates :service_account_email, type: String

        # @return [:bigquery, :"cloud-platform", :"compute-ro", :"compute-rw", :"useraccounts-ro", :"useraccounts-rw", :datastore, :"logging-write", :monitoring, :sql, :"sql-admin", :"storage-full", :"storage-ro", :"storage-rw", :taskqueue, :"userinfo-email", nil] service account permissions (see U(https://cloud.google.com/sdk/gcloud/reference/compute/instances/create), --scopes section for detailed information)
        attribute :service_account_permissions
        validates :service_account_permissions, inclusion: {:in=>[:bigquery, :"cloud-platform", :"compute-ro", :"compute-rw", :"useraccounts-ro", :"useraccounts-rw", :datastore, :"logging-write", :monitoring, :sql, :"sql-admin", :"storage-full", :"storage-ro", :"storage-rw", :taskqueue, :"userinfo-email"], :message=>"%{value} needs to be :bigquery, :\"cloud-platform\", :\"compute-ro\", :\"compute-rw\", :\"useraccounts-ro\", :\"useraccounts-rw\", :datastore, :\"logging-write\", :monitoring, :sql, :\"sql-admin\", :\"storage-full\", :\"storage-ro\", :\"storage-rw\", :taskqueue, :\"userinfo-email\""}, allow_nil: true

        # @return [String, nil] path to the pem file associated with the service account email This option is deprecated. Use 'credentials_file'.
        attribute :pem_file
        validates :pem_file, type: String

        # @return [String, nil] path to the JSON file associated with the service account email
        attribute :credentials_file
        validates :credentials_file, type: String

        # @return [String, nil] your GCE project ID
        attribute :project_id
        validates :project_id, type: String

        # @return [String, nil] identifier when working with a single instance
        attribute :name
        validates :name, type: String

        # @return [String, nil] name of the network, 'default' will be used if not specified
        attribute :network
        validates :network, type: String

        # @return [Object, nil] name of the subnetwork in which the instance should be created
        attribute :subnetwork

        # @return [String, nil] if set, create the instance with a persistent boot disk
        attribute :persistent_boot_disk
        validates :persistent_boot_disk, type: String

        # @return [Object, nil] a list of persistent disks to attach to the instance; a string value gives the name of the disk; alternatively, a dictionary value can define 'name' and 'mode' ('READ_ONLY' or 'READ_WRITE'). The first entry will be the boot disk (which must be READ_WRITE).
        attribute :disks

        # @return [:active, :present, :absent, :deleted, :started, :stopped, :terminated, nil] desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:active, :present, :absent, :deleted, :started, :stopped, :terminated], :message=>"%{value} needs to be :active, :present, :absent, :deleted, :started, :stopped, :terminated"}, allow_nil: true

        # @return [Object, nil] a comma-separated list of tags to associate with the instance
        attribute :tags

        # @return [String] the GCE zone to use
        attribute :zone
        validates :zone, presence: true, type: String

        # @return [String, nil] set to true if the instance can forward ip packets (useful for gateways)
        attribute :ip_forward
        validates :ip_forward, type: String

        # @return [String, nil] type of external ip, ephemeral by default; alternatively, a list of fixed gce ips or ip names can be given (if there is not enough specified ip, 'ephemeral' will be used). Specify 'none' if no external ip is desired.
        attribute :external_ip
        validates :external_ip, type: String

        # @return [String, nil] if set boot disk will be removed after instance destruction
        attribute :disk_auto_delete
        validates :disk_auto_delete, type: String

        # @return [String, nil] if set to true, instances will be preemptible and time-limited. (requires libcloud >= 0.20.0)
        attribute :preemptible
        validates :preemptible, type: String
      end
    end
  end
end
