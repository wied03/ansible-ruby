# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, or destroy Ansible Tower groups. See U(https://www.ansible.com/tower) for an overview.
      class Tower_group < Base
        # @return [String] The name to use for the group.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The description to use for the group.
        attribute :description
        validates :description, type: String

        # @return [String] Inventory the group should be made a member of.
        attribute :inventory
        validates :inventory, presence: true, type: String

        # @return [Object, nil] Variables to use for the group, use C(@) for a file.
        attribute :variables

        # @return [Object, nil] Credential to use for the group.
        attribute :credential

        # @return [:manual, :file, :ec2, :rax, :vmware, :gce, :azure, :azure_rm, :openstack, :satellite6, :cloudforms, :custom, nil] The source to use for this group.
        attribute :source
        validates :source, inclusion: {:in=>[:manual, :file, :ec2, :rax, :vmware, :gce, :azure, :azure_rm, :openstack, :satellite6, :cloudforms, :custom], :message=>"%{value} needs to be :manual, :file, :ec2, :rax, :vmware, :gce, :azure, :azure_rm, :openstack, :satellite6, :cloudforms, :custom"}, allow_nil: true

        # @return [Object, nil] Regions for cloud provider.
        attribute :source_regions

        # @return [Object, nil] Override variables from source with variables from this field.
        attribute :source_vars

        # @return [Object, nil] Comma-separated list of filter expressions for matching hosts.
        attribute :instance_filters

        # @return [Object, nil] Limit groups automatically created from inventory source.
        attribute :group_by

        # @return [Object, nil] Inventory script to be used when group type is C(custom).
        attribute :source_script

        # @return [String, nil] Delete child groups and hosts not found in source.
        attribute :overwrite
        validates :overwrite, type: String

        # @return [Object, nil] Override vars in child groups and hosts with those from external source.
        attribute :overwrite_vars

        # @return [String, nil] Refresh inventory data from its source each time a job is run.
        attribute :update_on_launch
        validates :update_on_launch, type: String

        # @return [:present, :absent, nil] Desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
