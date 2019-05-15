# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to wait for VMware tools to become available on the given VM and return facts.
      class Vmware_guest_tools_wait < Base
        # @return [String, nil] Name of the VM for which to wait until the tools become available.,This is required if uuid is not supplied.
        attribute :name
        validates :name, type: String

        # @return [:first, :last, nil] If multiple VMs match the name, use the first or last found.
        attribute :name_match
        validates :name_match, inclusion: {:in=>[:first, :last], :message=>"%{value} needs to be :first, :last"}, allow_nil: true

        # @return [String, nil] Destination folder, absolute or relative path to find an existing guest.,This is required only, if multiple VMs with same C(name) is found.,The folder should include the datacenter. ESX's datacenter is C(ha-datacenter).,Examples:,   folder: /ha-datacenter/vm,   folder: ha-datacenter/vm,   folder: /datacenter1/vm,   folder: datacenter1/vm,   folder: /datacenter1/vm/folder1,   folder: datacenter1/vm/folder1,   folder: /folder1/datacenter1/vm,   folder: folder1/datacenter1/vm,   folder: /folder1/datacenter1/vm/folder2
        attribute :folder
        validates :folder, type: String

        # @return [String, nil] UUID of the VM  for which to wait until the tools become available, if known. This is VMware's unique identifier.,This is required, if C(name) is not supplied.
        attribute :uuid
        validates :uuid, type: String
      end
    end
  end
end
