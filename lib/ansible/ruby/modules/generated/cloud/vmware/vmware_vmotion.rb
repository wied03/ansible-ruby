# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Using VMware vCenter, move a virtual machine using vMotion to a different host, and/or its vmdks to another datastore using storage vMotion.
      class Vmware_vmotion < Base
        # @return [String, nil] Name of the VM to perform a vMotion on.,This is required parameter, if C(vm_uuid) is not set.,Version 2.6 onwards, this parameter is not a required parameter, unlike the previous versions.
        attribute :vm_name
        validates :vm_name, type: String

        # @return [Object, nil] UUID of the virtual machine to perform a vMotion operation on.,This is a required parameter, if C(vm_name) is not set.
        attribute :vm_uuid

        # @return [String, nil] Name of the destination host the virtual machine should be running on.,Version 2.6 onwards, this parameter is not a required parameter, unlike the previous versions.
        attribute :destination_host
        validates :destination_host, type: String

        # @return [String, nil] Name of the destination datastore the virtual machine's vmdk should be moved on.
        attribute :destination_datastore
        validates :destination_datastore, type: String
      end
    end
  end
end
