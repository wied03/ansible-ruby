# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Find the folder path(s) for a virtual machine by name or UUID
      class Vmware_guest_find < Base
        # @return [String, nil] Name of the VM to work with.,This is required if C(uuid) parameter is not supplied.
        attribute :name
        validates :name, type: String

        # @return [String, nil] UUID of the instance to manage if known, this is VMware's BIOS UUID.,This is required if C(name) parameter is not supplied.
        attribute :uuid
        validates :uuid, type: String

        # @return [Object, nil] Destination datacenter for the find operation.,Deprecated in 2.5, will be removed in 2.9 release.
        attribute :datacenter
      end
    end
  end
end
