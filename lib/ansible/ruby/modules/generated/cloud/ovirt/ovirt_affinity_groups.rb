# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module manage affinity groups in oVirt. It can also manage assignments of those groups to VMs.
      class Ovirt_affinity_groups < Base
        # @return [String] Name of the the affinity group to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Should the affinity group be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Name of the cluster of the affinity group.
        attribute :cluster
        validates :cluster, type: String

        # @return [Object, nil] Description of the affinity group.
        attribute :description

        # @return [Boolean, nil] If I(true) VM cannot start on host if it does not satisfy the C(host_rule).,C(This parameter is support since oVirt 4.1 version.)
        attribute :host_enforcing
        validates :host_enforcing, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:positive, :negative, nil] If I(positive) I(all) VMs in this group should run on the this host.,If I(negative) I(no) VMs in this group should run on the this host.,C(This parameter is support since oVirt 4.1 version.)
        attribute :host_rule
        validates :host_rule, inclusion: {:in=>[:positive, :negative], :message=>"%{value} needs to be :positive, :negative"}, allow_nil: true

        # @return [TrueClass, FalseClass, nil] If I(true) VM cannot start if it does not satisfy the C(vm_rule).
        attribute :vm_enforcing
        validates :vm_enforcing, type: MultipleTypes.new(TrueClass, FalseClass)

        # @return [:positive, :negative, :disabled, nil] If I(positive) I(all) VMs in this group should run on the host defined by C(host_rule).,If I(negative) I(no) VMs in this group should run on the host defined by C(host_rule).,If I(disabled) this affinity group doesn't take effect.
        attribute :vm_rule
        validates :vm_rule, inclusion: {:in=>[:positive, :negative, :disabled], :message=>"%{value} needs to be :positive, :negative, :disabled"}, allow_nil: true

        # @return [Array<String>, String, nil] List of the VMs names, which should have assigned this affinity group.
        attribute :vms
        validates :vms, type: TypeGeneric.new(String, NilClass)

        # @return [Array<String>, String, nil] List of the hosts names, which should have assigned this affinity group.,C(This parameter is support since oVirt 4.1 version.)
        attribute :hosts
        validates :hosts, type: TypeGeneric.new(String)
      end
    end
  end
end
