# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Start a program in a VM without the need for network connection
      class Vmware_vm_shell < Base
        # @return [String, nil] The datacenter hosting the VM,Will help speed up search
        attribute :datacenter
        validates :datacenter, type: String

        # @return [Object, nil] The cluster hosting the VM,Will help speed up search
        attribute :cluster

        # @return [String] The identification for the VM
        attribute :vm_id
        validates :vm_id, presence: true, type: String

        # @return [:uuid, :dns_name, :inventory_path, :vm_name, nil] The identification tag for the VM
        attribute :vm_id_type
        validates :vm_id_type, inclusion: {:in=>[:uuid, :dns_name, :inventory_path, :vm_name], :message=>"%{value} needs to be :uuid, :dns_name, :inventory_path, :vm_name"}, allow_nil: true

        # @return [String, nil] The user to connect to the VM.
        attribute :vm_username
        validates :vm_username, type: String

        # @return [String, nil] The password used to login to the VM.
        attribute :vm_password
        validates :vm_password, type: String

        # @return [String] The absolute path to the program to start. On Linux this is executed via bash.
        attribute :vm_shell
        validates :vm_shell, presence: true, type: String

        # @return [String, nil] The argument to the program.
        attribute :vm_shell_args
        validates :vm_shell_args, type: String

        # @return [Array<String>, String, nil] Comma separated list of envirnoment variable, specified in the guest OS notation
        attribute :vm_shell_env
        validates :vm_shell_env, type: TypeGeneric.new(String)

        # @return [String, nil] The current working directory of the application from which it will be run
        attribute :vm_shell_cwd
        validates :vm_shell_cwd, type: String
      end
    end
  end
end
