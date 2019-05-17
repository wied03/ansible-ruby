# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to manage boot options for the given virtual machine.
      class Vmware_guest_boot_manager < Base
        # @return [String, nil] Name of the VM to work with.,This is required if C(uuid) parameter is not supplied.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] UUID of the instance to manage if known, this is VMware's BIOS UUID.,This is required if C(name) parameter is not supplied.
        attribute :uuid

        # @return [Object, nil] List of the boot devices.
        attribute :boot_order

        # @return [:first, :last, nil] If multiple virtual machines matching the name, use the first or last found.
        attribute :name_match
        validates :name_match, inclusion: {:in=>[:first, :last], :message=>"%{value} needs to be :first, :last"}, allow_nil: true

        # @return [Integer, nil] Delay in milliseconds before starting the boot sequence.
        attribute :boot_delay
        validates :boot_delay, type: Integer

        # @return [Symbol, nil] If set to C(True), the virtual machine automatically enters BIOS setup the next time it boots.,The virtual machine resets this flag, so that the machine boots proceeds normally.
        attribute :enter_bios_setup
        validates :enter_bios_setup, type: Symbol

        # @return [Symbol, nil] If set to C(True), the virtual machine that fails to boot, will try to boot again after C(boot_retry_delay) is expired.,If set to C(False), the virtual machine waits indefinitely for user intervention.
        attribute :boot_retry_enabled
        validates :boot_retry_enabled, type: Symbol

        # @return [Integer, nil] Specify the time in milliseconds between virtual machine boot failure and subsequent attempt to boot again.,If set, will automatically set C(boot_retry_enabled) to C(True) as this parameter is required.
        attribute :boot_retry_delay
        validates :boot_retry_delay, type: Integer

        # @return [:bios, :efi, nil] Choose which firmware should be used to boot the virtual machine.
        attribute :boot_firmware
        validates :boot_firmware, inclusion: {:in=>[:bios, :efi], :message=>"%{value} needs to be :bios, :efi"}, allow_nil: true
      end
    end
  end
end
