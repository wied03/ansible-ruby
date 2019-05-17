# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module supports two different workflows for copying a file to flash (or bootflash) on NXOS devices.  Files can either be (1) pushed from the Ansible controller to the device or (2) pulled from a remote SCP file server to the device.  File copies are initiated from the NXOS device to the remote SCP server.  This module only supports the use of connection C(network_cli) or C(Cli) transport with connection C(local).
      class Nxos_file_copy < Base
        # @return [String, nil] When (file_pull is False) this is the path to the local file on the Ansible controller. The local directory must exist.,When (file_pull is True) this is the file name used on the NXOS device.
        attribute :local_file
        validates :local_file, type: String

        # @return [String, nil] When (file_pull is False) this is the remote file path on the NXOS device. If omitted, the name of the local file will be used. The remote directory must exist.,When (file_pull is True) this is the full path to the file on the remote SCP server to be copied to the NXOS device.
        attribute :remote_file
        validates :remote_file, type: String

        # @return [String, nil] The remote file system of the device. If omitted, devices that support a I(file_system) parameter will use their default values.
        attribute :file_system
        validates :file_system, type: String

        # @return [Integer, nil] SSH port to connect to server during transfer of file
        attribute :connect_ssh_port
        validates :connect_ssh_port, type: Integer

        # @return [Symbol, nil] When (False) file is copied from the Ansible controller to the NXOS device.,When (True) file is copied from a remote SCP server to the NXOS device. In this mode, the file copy is initiated from the NXOS device.,If the file is already present on the device it will be overwritten and therefore the operation is NOT idempotent.
        attribute :file_pull
        validates :file_pull, type: Symbol

        # @return [Object, nil] When (file_pull is True) file is copied from a remote SCP server to the NXOS device, and written to this directory on the NXOS device. If the directory does not exist, it will be created under the file_system. This is an optional parameter.,When (file_pull is False), this not used.
        attribute :local_file_directory

        # @return [Integer, nil] Use this parameter to set timeout in seconds, when transferring large files or when the network is slow.
        attribute :file_pull_timeout
        validates :file_pull_timeout, type: Integer

        # @return [String, nil] The remote scp server address which is used to pull the file. This is required if file_pull is True.
        attribute :remote_scp_server
        validates :remote_scp_server, type: String

        # @return [String, nil] The remote scp server username which is used to pull the file. This is required if file_pull is True.
        attribute :remote_scp_server_user
        validates :remote_scp_server_user, type: String

        # @return [String, nil] The remote scp server password which is used to pull the file. This is required if file_pull is True.
        attribute :remote_scp_server_password
        validates :remote_scp_server_password, type: String
      end
    end
  end
end
