# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to create, delete, move and rename folder on then given datacenter.
      class Vcenter_folder < Base
        # @return [String] Name of the datacenter.
        attribute :datacenter
        validates :datacenter, presence: true, type: String

        # @return [String] Name of folder to be managed.,This is case sensitive parameter.,Folder name should be under 80 characters. This is a VMware restriction.
        attribute :folder_name
        validates :folder_name, presence: true, type: String

        # @return [String, nil] Name of the parent folder under which new folder needs to be created.,This is case sensitive parameter.,Please specify unique folder name as there is no way to detect duplicate names.,If user wants to create a folder under '/DC0/vm/vm_folder', this value will be 'vm_folder'.
        attribute :parent_folder
        validates :parent_folder, type: String

        # @return [:datastore, :host, :network, :vm, nil] This is type of folder.,If set to C(vm), then 'VM and Template Folder' is created under datacenter.,If set to C(host), then 'Host and Cluster Folder' is created under datacenter.,If set to C(datastore), then 'Storage Folder' is created under datacenter.,If set to C(network), then 'Network Folder' is created under datacenter.,This parameter is required, if C(state) is set to C(present) and parent_folder is absent.,This option is ignored, if C(parent_folder) is set.
        attribute :folder_type
        validates :folder_type, inclusion: {:in=>[:datastore, :host, :network, :vm], :message=>"%{value} needs to be :datastore, :host, :network, :vm"}, allow_nil: true

        # @return [:present, :absent, nil] State of folder.,If set to C(present) without parent folder parameter, then folder with C(folder_type) is created.,If set to C(present) with parent folder parameter,  then folder in created under parent folder. C(folder_type) is ignored.,If set to C(absent), then folder is unregistered and destroyed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
