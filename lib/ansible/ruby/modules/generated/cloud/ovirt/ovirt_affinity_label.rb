# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module manage affinity labels in oVirt/RHV. It can also manage assignments of those labels to hosts and VMs.
      class Ovirt_affinity_label < Base
        # @return [String] Name of the affinity label to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Should the affinity label be present or absent.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Name of the cluster where vms and hosts resides.
        attribute :cluster
        validates :cluster, type: String

        # @return [Array<String>, String, nil] List of the VMs names, which should have assigned this affinity label.
        attribute :vms
        validates :vms, type: TypeGeneric.new(String, NilClass)

        # @return [Array<String>, String, nil] List of the hosts names, which should have assigned this affinity label.
        attribute :hosts
        validates :hosts, type: TypeGeneric.new(String)
      end
    end
  end
end
