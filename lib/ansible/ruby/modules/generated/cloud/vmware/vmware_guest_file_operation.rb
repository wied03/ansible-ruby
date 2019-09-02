# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to copy a file to a VM, fetch a file from a VM and create or delete a directory in the guest OS.
      class Vmware_guest_file_operation < Base
        # @return [String, nil] The datacenter hosting the virtual machine.,If set, it will help to speed up virtual machine search.
        attribute :datacenter
        validates :datacenter, type: String

        # @return [Object, nil] The cluster hosting the virtual machine.,If set, it will help to speed up virtual machine search.
        attribute :cluster

        # @return [Object, nil] Destination folder, absolute path to find an existing guest or create the new guest.,The folder should include the datacenter. ESX's datacenter is ha-datacenter,Used only if C(vm_id_type) is C(inventory_path).,Examples:,   folder: /ha-datacenter/vm,   folder: ha-datacenter/vm,   folder: /datacenter1/vm,   folder: datacenter1/vm,   folder: /datacenter1/vm/folder1,   folder: datacenter1/vm/folder1,   folder: /folder1/datacenter1/vm,   folder: folder1/datacenter1/vm,   folder: /folder1/datacenter1/vm/folder2,   folder: vm/folder2,   folder: folder2
        attribute :folder

        # @return [String] Name of the virtual machine to work with.
        attribute :vm_id
        validates :vm_id, presence: true, type: String

        # @return [:uuid, :dns_name, :inventory_path, :vm_name, nil] The VMware identification method by which the virtual machine will be identified.
        attribute :vm_id_type
        validates :vm_id_type, expression_inclusion: {:in=>[:uuid, :dns_name, :inventory_path, :vm_name], :message=>"%{value} needs to be :uuid, :dns_name, :inventory_path, :vm_name"}, allow_nil: true

        # @return [String] The user to login in to the virtual machine.
        attribute :vm_username
        validates :vm_username, presence: true, type: String

        # @return [String] The password used to login-in to the virtual machine.
        attribute :vm_password
        validates :vm_password, presence: true, type: String

        # @return [Hash, nil] Create or delete directory.,Valid attributes are:,  path: directory path to create or remove,  operation: Valid values are create, delete,  recurse (boolean): Not required, default (false)
        attribute :directory
        validates :directory, type: Hash

        # @return [Hash, nil] Copy file to vm without requiring network.,Valid attributes are:,  src: file source absolute or relative,  dest: file destination, path must be exist,  overwrite: False or True (not required, default False)
        attribute :copy
        validates :copy, type: Hash

        # @return [Hash, nil] Get file from virtual machine without requiring network.,Valid attributes are:,  src: The file on the remote system to fetch. This I(must) be a file, not a directory,  dest: file destination on localhost, path must be exist
        attribute :fetch
        validates :fetch, type: Hash
      end
    end
  end
end
