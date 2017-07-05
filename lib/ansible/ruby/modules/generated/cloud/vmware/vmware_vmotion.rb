# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Using VMware vCenter, move a virtual machine using vMotion to a different host.
      class Vmware_vmotion < Base
        # @return [String] Name of the VM to perform a vMotion on
        attribute :vm_name
        validates :vm_name, presence: true, type: String

        # @return [String] Name of the end host the VM should be running on
        attribute :destination_host
        validates :destination_host, presence: true, type: String
      end
    end
  end
end
