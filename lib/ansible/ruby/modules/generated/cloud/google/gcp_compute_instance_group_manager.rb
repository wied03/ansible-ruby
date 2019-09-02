# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates a managed instance group using the information that you specify in the request. After the group is created, it schedules an action to create instances in the group using the specified instance template. This operation is marked as DONE when the group is created even if the instances in the group have not yet been created. You must separately verify the status of the individual instances.
      # A managed instance group can have up to 1000 VM instances per group.
      class Gcp_compute_instance_group_manager < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name.,The base instance name must comply with RFC1035.
        attribute :base_instance_name
        validates :base_instance_name, presence: true, type: String

        # @return [Object, nil] An optional description of this resource. Provide this property when you create the resource.
        attribute :description

        # @return [String] The instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group.
        attribute :instance_template
        validates :instance_template, presence: true, type: String

        # @return [String] The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Named ports configured for the Instance Groups complementary to this Instance Group Manager.
        attribute :named_ports

        # @return [Object, nil] TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
        attribute :target_pools

        # @return [Integer, nil] The target number of running instances for this managed instance group. Deleting or abandoning instances reduces this number. Resizing the group changes this number.
        attribute :target_size
        validates :target_size, type: Integer

        # @return [String] The zone the managed instance group resides.
        attribute :zone
        validates :zone, presence: true, type: String
      end
    end
  end
end
