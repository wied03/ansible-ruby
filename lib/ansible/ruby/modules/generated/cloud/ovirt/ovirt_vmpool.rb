# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage VM pools in oVirt/RHV.
      class Ovirt_vmpool < Base
        # @return [String] Name of the VM pool to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Comment of the Virtual Machine pool.
        attribute :comment

        # @return [:present, :absent, nil] Should the VM pool be present/absent.,Note that when C(state) is I(absent) all VMs in VM pool are stopped and removed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Name of the template, which will be used to create VM pool.
        attribute :template
        validates :template, type: String

        # @return [Object, nil] Description of the VM pool.
        attribute :description

        # @return [String, nil] Name of the cluster, where VM pool should be created.
        attribute :cluster
        validates :cluster, type: String

        # @return [:manual, :automatic, nil] Type of the VM pool. Either manual or automatic.,C(manual) - The administrator is responsible for explicitly returning the virtual machine to the pool. The virtual machine reverts to the original base image after the administrator returns it to the pool.,C(Automatic) - When the virtual machine is shut down, it automatically reverts to its base image and is returned to the virtual machine pool.,Default value is set by engine.
        attribute :type
        validates :type, expression_inclusion: {:in=>[:manual, :automatic], :message=>"%{value} needs to be :manual, :automatic"}, allow_nil: true

        # @return [Integer, nil] Maximum number of VMs a single user can attach to from this pool.,Default value is set by engine.
        attribute :vm_per_user
        validates :vm_per_user, type: Integer

        # @return [Integer, nil] Number of pre-started VMs defines the number of VMs in run state, that are waiting to be attached to Users.,Default value is set by engine.
        attribute :prestarted
        validates :prestarted, type: Integer

        # @return [Integer, nil] Number of VMs in the pool.,Default value is set by engine.
        attribute :vm_count
        validates :vm_count, type: Integer
      end
    end
  end
end
