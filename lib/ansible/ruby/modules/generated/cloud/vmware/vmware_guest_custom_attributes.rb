# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to add, remove and update custom attributes for the given virtual machine.
      class Vmware_guest_custom_attributes < Base
        # @return [Object] Name of the virtual machine to work with.
        attribute :name
        validates :name, presence: true

        # @return [:present, :absent, nil] The action to take.,If set to C(present), then custom attribute is added or updated.,If set to C(absent), then custom attribute is removed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] UUID of the virtual machine to manage if known. This is VMware's unique identifier.,This is required parameter, if C(name) is not supplied.
        attribute :uuid
        validates :uuid, type: String

        # @return [Object, nil] Absolute path to find an existing guest.,This is required parameter, if C(name) is supplied and multiple virtual machines with same name are found.
        attribute :folder

        # @return [Object] Datacenter name where the virtual machine is located in.
        attribute :datacenter
        validates :datacenter, presence: true

        # @return [Object, nil] A list of name and value of custom attributes that needs to be manage.,Value of custom attribute is not required and will be ignored, if C(state) is set to C(absent).
        attribute :attributes
      end
    end
  end
end
