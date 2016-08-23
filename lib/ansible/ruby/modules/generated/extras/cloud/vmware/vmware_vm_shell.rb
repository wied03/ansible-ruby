# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vmware_vm_shell < Base
        # @return [String] The datacenter hosting the VM,Will help speed up search
        attribute :datacenter
        validates :datacenter, type: String

        # @return [String] The cluster hosting the VM,Will help speed up search
        attribute :cluster
        validates :cluster, type: String

        # @return [String] The identification for the VM
        attribute :vm_id
        validates :vm_id, presence: true, type: String

        # @return [String] The identification tag for the VM
        attribute :vm_id_type
        validates :vm_id_type, inclusion: {:in=>[:uuid, :dns_name, :inventory_path, :vm_name], :message=>"%{value} needs to be :uuid, :dns_name, :inventory_path, :vm_name"}, allow_nil: true

        # @return [String] The user to connect to the VM.
        attribute :vm_username
        validates :vm_username, type: String

        # @return [String] The password used to login to the VM.
        attribute :vm_password
        validates :vm_password, type: String

        # @return [String] The absolute path to the program to start. On Linux this is executed via bash.
        attribute :vm_shell
        validates :vm_shell, presence: true, type: String

        # @return [String] The argument to the program.
        attribute :vm_shell_args
        validates :vm_shell_args, type: String

        # @return [String] Comma seperated list of envirnoment variable, specified in the guest OS notation
        attribute :vm_shell_env
        validates :vm_shell_env, type: String

        # @return [String] The current working directory of the application from which it will be run
        attribute :vm_shell_cwd
        validates :vm_shell_cwd, type: String
      end
    end
  end
end
