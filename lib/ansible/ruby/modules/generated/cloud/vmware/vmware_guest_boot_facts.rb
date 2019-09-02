# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to gather facts aboyt boot options for the given virtual machine.
      class Vmware_guest_boot_facts < Base
        # @return [String, nil] Name of the VM to work with.,This is required if C(uuid) parameter is not supplied.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] UUID of the instance to manage if known, this is VMware's BIOS UUID.,This is required if C(name) parameter is not supplied.
        attribute :uuid

        # @return [:first, :last, nil] If multiple virtual machines matching the name, use the first or last found.
        attribute :name_match
        validates :name_match, expression_inclusion: {:in=>[:first, :last], :message=>"%{value} needs to be :first, :last"}, allow_nil: true
      end
    end
  end
end
