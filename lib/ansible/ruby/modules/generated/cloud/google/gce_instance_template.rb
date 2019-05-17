# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates or destroy Google instance templates of Compute Engine of Google Cloud Platform.
      class Gce_instance_template < Base
        # @return [:present, :absent, nil] The desired state for the instance template.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The name of the GCE instance template.
        attribute :name
        validates :name, type: String

        # @return [String, nil] The desired machine type for the instance template.
        attribute :size
        validates :size, type: String

        # @return [Object, nil] A source disk to attach to the instance. Cannot specify both I(image) and I(source).
        attribute :source

        # @return [Object, nil] The image to use to create the instance. Cannot specify both both I(image) and I(source).
        attribute :image

        # @return [String, nil] The image family to use to create the instance. If I(image) has been used I(image_family) is ignored. Cannot specify both I(image) and I(source).
        attribute :image_family
        validates :image_family, type: String

        # @return [String, nil] Specify a C(pd-standard) disk or C(pd-ssd) for an SSD disk.
        attribute :disk_type
        validates :disk_type, type: String

        # @return [Boolean, nil] Indicate that the boot disk should be deleted when the Node is deleted.
        attribute :disk_auto_delete
        validates :disk_auto_delete, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The network to associate with the instance.
        attribute :network
        validates :network, type: String

        # @return [Object, nil] The Subnetwork resource name for this instance.
        attribute :subnetwork

        # @return [:yes, :no, nil] Set to C(yes) to allow instance to send/receive non-matching src/dst packets.
        attribute :can_ip_forward
        validates :can_ip_forward, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] The external IP address to use. If C(ephemeral), a new non-static address will be used.  If C(None), then no external address will be used.  To use an existing static IP address specify address name.
        attribute :external_ip
        validates :external_ip, type: String

        # @return [String, nil] service account email
        attribute :service_account_email
        validates :service_account_email, type: String

        # @return [:bigquery, :"cloud-platform", :"compute-ro", :"compute-rw", :"useraccounts-ro", :"useraccounts-rw", :datastore, :"logging-write", :monitoring, :"sql-admin", :"storage-full", :"storage-ro", :"storage-rw", :taskqueue, :"userinfo-email", nil] service account permissions (see U(https://cloud.google.com/sdk/gcloud/reference/compute/instances/create), --scopes section for detailed information)
        attribute :service_account_permissions
        validates :service_account_permissions, inclusion: {:in=>[:bigquery, :"cloud-platform", :"compute-ro", :"compute-rw", :"useraccounts-ro", :"useraccounts-rw", :datastore, :"logging-write", :monitoring, :"sql-admin", :"storage-full", :"storage-ro", :"storage-rw", :taskqueue, :"userinfo-email"], :message=>"%{value} needs to be :bigquery, :\"cloud-platform\", :\"compute-ro\", :\"compute-rw\", :\"useraccounts-ro\", :\"useraccounts-rw\", :datastore, :\"logging-write\", :monitoring, :\"sql-admin\", :\"storage-full\", :\"storage-ro\", :\"storage-rw\", :taskqueue, :\"userinfo-email\""}, allow_nil: true

        # @return [Object, nil] Defines whether the instance should be automatically restarted when it is terminated by Compute Engine.
        attribute :automatic_restart

        # @return [Object, nil] Defines whether the instance is preemptible.
        attribute :preemptible

        # @return [Object, nil] a comma-separated list of tags to associate with the instance
        attribute :tags

        # @return [Object, nil] a hash/dictionary of custom data for the instance; '{"key":"value", ...}'
        attribute :metadata

        # @return [Object, nil] description of instance template
        attribute :description

        # @return [Object, nil] a list of persistent disks to attach to the instance; a string value gives the name of the disk; alternatively, a dictionary value can define 'name' and 'mode' ('READ_ONLY' or 'READ_WRITE'). The first entry will be the boot disk (which must be READ_WRITE).
        attribute :disks

        # @return [Object, nil] Support passing in the GCE-specific formatted networkInterfaces[] structure.
        attribute :nic_gce_struct

        # @return [Object, nil] Support passing in the GCE-specific formatted formatted disks[] structure. Case sensitive. see U(https://cloud.google.com/compute/docs/reference/latest/instanceTemplates#resource) for detailed information
        attribute :disks_gce_struct

        # @return [String, nil] your GCE project ID
        attribute :project_id
        validates :project_id, type: String

        # @return [Object, nil] path to the pem file associated with the service account email This option is deprecated. Use 'credentials_file'.
        attribute :pem_file

        # @return [String, nil] path to the JSON file associated with the service account email
        attribute :credentials_file
        validates :credentials_file, type: String

        # @return [Object, nil] Region that subnetwork resides in. (Required for subnetwork to successfully complete)
        attribute :subnetwork_region
      end
    end
  end
end
