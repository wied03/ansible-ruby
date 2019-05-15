# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Copy a file to a remote cloudengine device over SCP on HUAWEI CloudEngine switches.
      class Ce_file_copy < Base
        # @return [Object] Path to local file. Local directory must exist. The maximum length of I(local_file) is C(4096).
        attribute :local_file
        validates :local_file, presence: true

        # @return [Object, nil] Remote file path of the copy. Remote directories must exist. If omitted, the name of the local file will be used. The maximum length of I(remote_file) is C(4096).
        attribute :remote_file

        # @return [String, nil] The remote file system of the device. If omitted, devices that support a I(file_system) parameter will use their default values. File system indicates the storage medium and can be set to as follows, 1) C(flash) is root directory of the flash memory on the master MPU. 2) C(slave#flash) is root directory of the flash memory on the slave MPU. If no slave MPU exists, this drive is unavailable. 3) C(chassis ID/slot number#flash) is root directory of the flash memory on a device in a stack. For example, C(1/5#flash) indicates the flash memory whose chassis ID is 1 and slot number is 5.
        attribute :file_system
        validates :file_system, type: String
      end
    end
  end
end
