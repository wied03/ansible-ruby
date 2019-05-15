# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to configure VMware DRS Affinity rule for virtual machine in given cluster.
      class Vmware_vm_vm_drs_rule < Base
        # @return [String] Desired cluster name where virtual machines are present for the DRS rule.
        attribute :cluster_name
        validates :cluster_name, presence: true, type: String

        # @return [Array<String>, String, nil] List of virtual machines name for which DRS rule needs to be applied.,Required if C(state) is set to C(present).
        attribute :vms
        validates :vms, type: TypeGeneric.new(String)

        # @return [String] The name of the DRS rule to manage.
        attribute :drs_rule_name
        validates :drs_rule_name, presence: true, type: String

        # @return [Boolean, nil] If set to C(True), the DRS rule will be enabled.,Effective only if C(state) is set to C(present).
        attribute :enabled
        validates :enabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] If set to C(True), the DRS rule will be mandatory.,Effective only if C(state) is set to C(present).
        attribute :mandatory
        validates :mandatory, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] If set to C(True), the DRS rule will be an Affinity rule.,If set to C(False), the DRS rule will be an Anti-Affinity rule.,Effective only if C(state) is set to C(present).
        attribute :affinity_rule
        validates :affinity_rule, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] If set to C(present), then the DRS rule is created if not present.,If set to C(present), then the DRS rule is deleted and created if present already.,If set to C(absent), then the DRS rule is deleted if present.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
