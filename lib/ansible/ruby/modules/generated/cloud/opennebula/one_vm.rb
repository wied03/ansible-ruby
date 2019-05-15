# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages OpenNebula instances
      class One_vm < Base
        # @return [Object, nil] URL of the OpenNebula RPC server.,It is recommended to use HTTPS so that the username/password are not,transferred over the network unencrypted.,If not set then the value of the C(ONE_URL) environment variable is used.
        attribute :api_url

        # @return [Object, nil] Name of the user to login into the OpenNebula RPC server. If not set,then the value of the C(ONE_USERNAME) environment variable is used.
        attribute :api_username

        # @return [Object, nil] Password of the user to login into OpenNebula RPC server. If not set
        attribute :api_password

        # @return [String, nil] Name of VM template to use to create a new instace
        attribute :template_name
        validates :template_name, type: String

        # @return [Integer, nil] ID of a VM template to use to create a new instance
        attribute :template_id
        validates :template_id, type: Integer

        # @return [Array<Integer>, Integer, nil] A list of instance ids used for states':' C(absent), C(running), C(rebooted), C(poweredoff)
        attribute :instance_ids
        validates :instance_ids, type: TypeGeneric.new(Integer)

        # @return [:present, :absent, :running, :rebooted, :poweredoff, nil] C(present) - create instances from a template specified with C(template_id)/C(template_name).,C(running) - run instances,C(poweredoff) - power-off instances,C(rebooted) - reboot instances,C(absent) - terminate instances
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :running, :rebooted, :poweredoff], :message=>"%{value} needs to be :present, :absent, :running, :rebooted, :poweredoff"}, allow_nil: true

        # @return [Boolean, nil] Reboot, power-off or terminate instances C(hard)
        attribute :hard
        validates :hard, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Wait for the instance to reach its desired state before returning. Keep,in mind if you are waiting for instance to be in running state it,doesn't mean that you will be able to SSH on that machine only that,boot process have started on that instance, see 'wait_for' example for,details.
        attribute :wait
        validates :wait, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] How long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [Object, nil] A dictionary of key/value attributes to add to new instances, or for,setting C(state) of instances with these attributes.,Keys are case insensitive and OpenNebula automatically converts them to upper case.,Be aware C(NAME) is a special attribute which sets the name of the VM when it's deployed.,C(#) character(s) can be appended to the C(NAME) and the module will automatically add,indexes to the names of VMs.,For example':' C(NAME':' foo-###) would create VMs with names C(foo-000), C(foo-001),...,When used with C(count_attributes) and C(exact_count) the module will,match the base name without the index part.
        attribute :attributes

        # @return [Object, nil] A list of labels to associate with new instances, or for setting,C(state) of instances with these labels.
        attribute :labels

        # @return [Hash, nil] A dictionary of key/value attributes that can only be used with,C(exact_count) to determine how many nodes based on a specific,attributes criteria should be deployed. This can be expressed in,multiple ways and is shown in the EXAMPLES section.
        attribute :count_attributes
        validates :count_attributes, type: Hash

        # @return [Array<String>, String, nil] A list of labels that can only be used with C(exact_count) to determine,how many nodes based on a specific labels criteria should be deployed.,This can be expressed in multiple ways and is shown in the EXAMPLES,section.
        attribute :count_labels
        validates :count_labels, type: TypeGeneric.new(String)

        # @return [Integer, nil] Number of instances to launch
        attribute :count
        validates :count, type: Integer

        # @return [Integer, nil] Indicates how many instances that match C(count_attributes) and,C(count_labels) parameters should be deployed. Instances are either,created or terminated based on this value.,NOTE':' Instances with the least IDs will be terminated first.
        attribute :exact_count
        validates :exact_count, type: Integer

        # @return [Integer, nil] Set permission mode of the instance in octet format, e.g. C(600) to give owner C(use) and C(manage) and nothing to group and others.
        attribute :mode
        validates :mode, type: Integer

        # @return [Object, nil] ID of the user which will be set as the owner of the instance
        attribute :owner_id

        # @return [Integer, nil] ID of the group which will be set as the group of the instance
        attribute :group_id
        validates :group_id, type: Integer

        # @return [String, nil] The size of the memory for new instances (in MB, GB, ...)
        attribute :memory
        validates :memory, type: String

        # @return [String, nil] The size of the disk created for new instances (in MB, GB, TB,...).,NOTE':' This option can be used only if the VM template specified with,C(template_id)/C(template_name) has exactly one disk.
        attribute :disk_size
        validates :disk_size, type: String

        # @return [Object, nil] Percentage of CPU divided by 100 required for the new instance. Half a,processor is written 0.5.
        attribute :cpu

        # @return [Integer, nil] Number of CPUs (cores) new VM will have.
        attribute :vcpu
        validates :vcpu, type: Integer

        # @return [Object, nil] A list of dictionaries with network parameters. See examples for more details.
        attribute :networks

        # @return [Hash, nil] Creates an image from a VM disk.,It is a dictionary where you have to specife C(name) of the new image.,Optionally you can specife C(disk_id) of the disk you want to save. By default C(disk_id) is 0.,I(NOTE)':' This operation will only be performed on the first VM (if more than one VM ID is passed),and the VM has to be in the C(poweredoff) state.,Also this operation will fail if an image with specified C(name) already exists.
        attribute :disk_saveas
        validates :disk_saveas, type: Hash
      end
    end
  end
end
