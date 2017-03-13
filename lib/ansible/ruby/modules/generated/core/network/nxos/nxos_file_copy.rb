# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Copy a file to the flash (or bootflash) remote network device on NXOS devices.
      class Nxos_file_copy < Base
        # @return [String] Path to local file. Local directory must exist.
        attribute :local_file
        validates :local_file, presence: true, type: String

        # @return [Object, nil] Remote file path of the copy. Remote directories must exist. If omitted, the name of the local file will be used.
        attribute :remote_file

        # @return [Object, nil] The remote file system of the device. If omitted, devices that support a file_system parameter will use their default values.
        attribute :file_system
      end
    end
  end
end
