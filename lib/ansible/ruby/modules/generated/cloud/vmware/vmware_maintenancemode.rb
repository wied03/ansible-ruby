# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used for placing a ESXi host into maintenance mode.
      # Support for VSAN compliant maintenance mode when selected.
      class Vmware_maintenancemode < Base
        # @return [String] Name of the host as defined in vCenter.
        attribute :esxi_hostname
        validates :esxi_hostname, presence: true, type: String

        # @return [:ensureObjectAccessibility, :evacuateAllData, :noAction, nil] Specify which VSAN compliant mode to enter.
        attribute :vsan
        validates :vsan, expression_inclusion: {:in=>[:ensureObjectAccessibility, :evacuateAllData, :noAction], :message=>"%{value} needs to be :ensureObjectAccessibility, :evacuateAllData, :noAction"}, allow_nil: true

        # @return [Symbol, nil] If set to C(True), evacuate all powered off VMs.
        attribute :evacuate
        validates :evacuate, type: Symbol

        # @return [Integer, nil] Specify a timeout for the operation.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [:present, :absent, nil] Enter or exit maintenance mode.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
