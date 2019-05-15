# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module allows user to run common system administration commands in the guest operating system.
      class Vmware_vm_shell < Base
        # @return [String, nil] The datacenter hosting the virtual machine.,If set, it will help to speed up virtual machine search.
        attribute :datacenter
        validates :datacenter, type: String

        # @return [Object, nil] The cluster hosting the virtual machine.,If set, it will help to speed up virtual machine search.
        attribute :cluster

        # @return [String, nil] Destination folder, absolute or relative path to find an existing guest or create the new guest.,The folder should include the datacenter. ESX's datacenter is ha-datacenter.,Examples:,   folder: /ha-datacenter/vm,   folder: ha-datacenter/vm,   folder: /datacenter1/vm,   folder: datacenter1/vm,   folder: /datacenter1/vm/folder1,   folder: datacenter1/vm/folder1,   folder: /folder1/datacenter1/vm,   folder: folder1/datacenter1/vm,   folder: /folder1/datacenter1/vm/folder2
        attribute :folder
        validates :folder, type: String

        # @return [String] Name of the virtual machine to work with.
        attribute :vm_id
        validates :vm_id, presence: true, type: String

        # @return [:uuid, :dns_name, :inventory_path, :vm_name, nil] The VMware identification method by which the virtual machine will be identified.
        attribute :vm_id_type
        validates :vm_id_type, inclusion: {:in=>[:uuid, :dns_name, :inventory_path, :vm_name], :message=>"%{value} needs to be :uuid, :dns_name, :inventory_path, :vm_name"}, allow_nil: true

        # @return [String] The user to login-in to the virtual machine.
        attribute :vm_username
        validates :vm_username, presence: true, type: String

        # @return [String] The password used to login-in to the virtual machine.
        attribute :vm_password
        validates :vm_password, presence: true, type: String

        # @return [String] The absolute path to the program to start.,On Linux, shell is executed via bash.
        attribute :vm_shell
        validates :vm_shell, presence: true, type: String

        # @return [String, nil] The argument to the program.,The characters which must be escaped to the shell also be escaped on the command line provided.
        attribute :vm_shell_args
        validates :vm_shell_args, type: String

        # @return [Array<String>, String, nil] Comma separated list of environment variable, specified in the guest OS notation.
        attribute :vm_shell_env
        validates :vm_shell_env, type: TypeGeneric.new(String)

        # @return [String, nil] The current working directory of the application from which it will be run.
        attribute :vm_shell_cwd
        validates :vm_shell_cwd, type: String

        # @return [Boolean, nil] If set to C(True), module will wait for process to complete in the given virtual machine.
        attribute :wait_for_process
        validates :wait_for_process, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] Timeout in seconds.,If set to positive integers, then C(wait_for_process) will honor this parameter and will exit after this timeout.
        attribute :timeout
        validates :timeout, type: Integer
      end
    end
  end
end
