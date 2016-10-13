# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Place an ESXI host into maintenance mode
      # Support for VSAN compliant maintenance mode when selected
      class Vmware_maintenancemode < Base
        # @return [String] Name of the host as defined in vCenter
        attribute :esxi_hostname
        validates :esxi_hostname, presence: true, type: String

        # @return [:ensureObjectAccessibility, :evacuateAllData, :noAction, nil] Specify which VSAN compliant mode to enter
        attribute :vsan_mode
        validates :vsan_mode, inclusion: {:in=>[:ensureObjectAccessibility, :evacuateAllData, :noAction], :message=>"%{value} needs to be :ensureObjectAccessibility, :evacuateAllData, :noAction"}, allow_nil: true

        # @return [Boolean, nil] If True, evacuate all powered off VMs
        attribute :evacuate
        validates :evacuate, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] Specify a timeout for the operation
        attribute :timeout
        validates :timeout, type: Integer

        # @return [:present, :absent, nil] Enter or exit maintenance mode
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
