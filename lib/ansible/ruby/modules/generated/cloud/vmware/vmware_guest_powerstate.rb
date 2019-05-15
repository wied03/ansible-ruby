# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Power on / Power off / Restart a virtual machine.
      class Vmware_guest_powerstate < Base
        # @return [:"powered-off", :"powered-on", :"reboot-guest", :restarted, :"shutdown-guest", :suspended, :present, nil] Set the state of the virtual machine.
        attribute :state
        validates :state, inclusion: {:in=>[:"powered-off", :"powered-on", :"reboot-guest", :restarted, :"shutdown-guest", :suspended, :present], :message=>"%{value} needs to be :\"powered-off\", :\"powered-on\", :\"reboot-guest\", :restarted, :\"shutdown-guest\", :suspended, :present"}, allow_nil: true

        # @return [String, nil] Name of the virtual machine to work with.,Virtual machine names in vCenter are not necessarily unique, which may be problematic, see C(name_match).
        attribute :name
        validates :name, type: String

        # @return [:first, :last, nil] If multiple virtual machines matching the name, use the first or last found.
        attribute :name_match
        validates :name_match, inclusion: {:in=>[:first, :last], :message=>"%{value} needs to be :first, :last"}, allow_nil: true

        # @return [Object, nil] UUID of the instance to manage if known, this is VMware's unique identifier.,This is required if name is not supplied.
        attribute :uuid

        # @return [String, nil] Destination folder, absolute or relative path to find an existing guest or create the new guest.,The folder should include the datacenter. ESX's datacenter is ha-datacenter,Examples:,   folder: /ha-datacenter/vm,   folder: ha-datacenter/vm,   folder: /datacenter1/vm,   folder: datacenter1/vm,   folder: /datacenter1/vm/folder1,   folder: datacenter1/vm/folder1,   folder: /folder1/datacenter1/vm,   folder: folder1/datacenter1/vm,   folder: /folder1/datacenter1/vm/folder2,   folder: vm/folder2,   folder: folder2
        attribute :folder
        validates :folder, type: String

        # @return [String, nil] Date and time in string format at which specificed task needs to be performed.,The required format for date and time - 'dd/mm/yyyy hh:mm'.,Scheduling task requires vCenter server. A standalone ESXi server does not support this option.
        attribute :scheduled_at
        validates :scheduled_at, type: String

        # @return [Boolean, nil] Ignore warnings and complete the actions.,This parameter is useful while forcing virtual machine state.
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] If the C(state) is set to C(shutdown-guest), by default the module will return immediately after sending the shutdown signal.,If this argument is set to a positive integer, the module will instead wait for the VM to reach the poweredoff state.,The value sets a timeout in seconds for the module to wait for the state change.
        attribute :state_change_timeout
        validates :state_change_timeout, type: Integer
      end
    end
  end
end
