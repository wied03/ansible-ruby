# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, or destroy Ansible Tower inventories source. See U(https://www.ansible.com/tower) for an overview.
      class Tower_inventory_source < Base
        # @return [String] The name to use for the inventory source.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The description to use for the inventory source.
        attribute :description
        validates :description, type: String

        # @return [String] The inventory the source is linked to.
        attribute :inventory
        validates :inventory, presence: true, type: String

        # @return [:file, :scm, :ec2, :gce, :azure, :azure_rm, :vmware, :satellite6, :cloudforms, :openstack, :rhv, :tower, :custom] Types of inventory source.
        attribute :source
        validates :source, presence: true, inclusion: {:in=>[:file, :scm, :ec2, :gce, :azure, :azure_rm, :vmware, :satellite6, :cloudforms, :openstack, :rhv, :tower, :custom], :message=>"%{value} needs to be :file, :scm, :ec2, :gce, :azure, :azure_rm, :vmware, :satellite6, :cloudforms, :openstack, :rhv, :tower, :custom"}

        # @return [String, nil] Credential to use to retrieve the inventory from.
        attribute :credential
        validates :credential, type: String

        # @return [String, nil] The source_vars allow to Override variables found in the source config file. For example with Openstack, specifying *private: false* would change the output of the openstack.py script. It has to be YAML or JSON.
        attribute :source_vars
        validates :source_vars, type: String

        # @return [Object, nil] Number in seconds after which the Tower API methods will time out.
        attribute :timeout

        # @return [Object, nil] Use a *project* as a source for the *inventory*.
        attribute :source_project

        # @return [Object, nil] Path to the file to use as a source in the selected *project*.
        attribute :source_path

        # @return [Object, nil] That parameter will sync the inventory when the project is synced. It can only be used with a SCM source.
        attribute :update_on_project_update

        # @return [Object, nil] List of regions for your cloud provider. You can include multiple all regions. Only Hosts associated with the selected regions will be updated. Refer to Ansible Tower documentation for more detail.
        attribute :source_regions

        # @return [Object, nil] Provide a comma-separated list of filter expressions. Hosts are imported when all of the filters match. Refer to Ansible Tower documentation for more detail.
        attribute :instance_filters

        # @return [Object, nil] Specify which groups to create automatically. Group names will be created similar to the options selected. If blank, all groups above are created. Refer to Ansible Tower documentation for more detail.
        attribute :group_by

        # @return [Object, nil] The source custom script to use to build the inventory. It needs to exist.
        attribute :source_script

        # @return [Boolean, nil] If set, any hosts and groups that were previously present on the external source but are now removed will be removed from the Tower inventory. Hosts and groups that were not managed by the inventory source will be promoted to the next manually created group or if there is no manually created group to promote them into, they will be left in the "all" default group for the inventory. When not checked, local child hosts and groups not found on the external source will remain untouched by the inventory update process.
        attribute :overwrite
        validates :overwrite, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] If set, all variables for child groups and hosts will be removed and replaced by those found on the external source. When not checked, a merge will be performed, combining local variables with those found on the external source.
        attribute :overwrite_vars

        # @return [Boolean, nil] Each time a job runs using this inventory, refresh the inventory from the selected source before executing job tasks.
        attribute :update_on_launch
        validates :update_on_launch, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Time in seconds to consider an inventory sync to be current. During job runs and callbacks the task system will evaluate the timestamp of the latest sync. If it is older than Cache Timeout, it is not considered current, and a new inventory sync will be performed.
        attribute :update_cache_timeout

        # @return [:present, :absent, nil] Desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Tower option to avoid certificates check.
        attribute :tower_verify_ssl
        validates :tower_verify_ssl, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
