# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, Update or Destroy a Managed Instance Group (MIG).  See U(https://cloud.google.com/compute/docs/instance-groups) for an overview. Full install/configuration instructions for the gce* modules can be found in the comments of ansible/test/gce_tests.py.
      class Gce_mig < Base
        # @return [String] Name of the Managed Instance Group.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Instance Template to be used in creating the VMs.  See U(https://cloud.google.com/compute/docs/instance-templates) to learn more about Instance Templates.  Required for creating MIGs.
        attribute :template

        # @return [Object, nil] Size of Managed Instance Group.  If MIG already exists, it will be resized to the number provided here.  Required for creating MIGs.
        attribute :size

        # @return [Object, nil] service account email
        attribute :service_account_email

        # @return [Object, nil] Path to the JSON file associated with the service account email
        attribute :credentials_file

        # @return [Object, nil] GCE project ID
        attribute :project_id

        # @return [:absent, :present, nil] desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Object] The GCE zone to use for this Managed Instance Group.
        attribute :zone
        validates :zone, presence: true

        # @return [Object, nil] A dictionary of configuration for the autoscaler. 'enabled (bool)', 'name (str)' and policy.max_instances (int) are required fields if autoscaling is used. See U(https://cloud.google.com/compute/docs/reference/beta/autoscalers) for more information on Autoscaling.
        attribute :autoscaling
      end
    end
  end
end
