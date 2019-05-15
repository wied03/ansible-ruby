# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module manage affinity groups in oVirt/RHV. It can also manage assignments of those groups to VMs.
      class Ovirt_affinity_group < Base
        # @return [String] Name of the affinity group to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Should the affinity group be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Name of the cluster of the affinity group.
        attribute :cluster
        validates :cluster, type: String

        # @return [Object, nil] Description of the affinity group.
        attribute :description

        # @return [Boolean, nil] If I(yes) VM cannot start on host if it does not satisfy the C(host_rule).,This parameter is support since oVirt/RHV 4.1 version.
        attribute :host_enforcing
        validates :host_enforcing, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:negative, :positive, nil] If I(positive) I(all) VMs in this group should run on the this host.,If I(negative) I(no) VMs in this group should run on the this host.,This parameter is support since oVirt/RHV 4.1 version.
        attribute :host_rule
        validates :host_rule, inclusion: {:in=>[:negative, :positive], :message=>"%{value} needs to be :negative, :positive"}, allow_nil: true

        # @return [TrueClass, FalseClass, nil] If I(yes) VM cannot start if it does not satisfy the C(vm_rule).
        attribute :vm_enforcing
        validates :vm_enforcing, type: MultipleTypes.new(TrueClass, FalseClass)

        # @return [:disabled, :negative, :positive, nil] If I(positive) I(all) VMs in this group should run on the host defined by C(host_rule).,If I(negative) I(no) VMs in this group should run on the host defined by C(host_rule).,If I(disabled) this affinity group doesn't take effect.
        attribute :vm_rule
        validates :vm_rule, inclusion: {:in=>[:disabled, :negative, :positive], :message=>"%{value} needs to be :disabled, :negative, :positive"}, allow_nil: true

        # @return [Array<String>, String, nil] List of the VMs names, which should have assigned this affinity group.
        attribute :vms
        validates :vms, type: TypeGeneric.new(String, NilClass)

        # @return [Array<String>, String, nil] List of the hosts names, which should have assigned this affinity group.,This parameter is support since oVirt/RHV 4.1 version.
        attribute :hosts
        validates :hosts, type: TypeGeneric.new(String)
      end
    end
  end
end