# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides functionality to copy file from Ansible controller to network devices.
      class Net_put < Base
        # @return [String] Specifies the source file. The path to the source file can either be the full path on the Ansible control host or a relative path from the playbook or role root directory.
        attribute :src
        validates :src, presence: true, type: String

        # @return [:scp, :sftp, nil] Protocol used to transfer file.
        attribute :protocol
        validates :protocol, expression_inclusion: {:in=>[:scp, :sftp], :message=>"%{value} needs to be :scp, :sftp"}, allow_nil: true

        # @return [String, nil] Specifies the destination file. The path to destination file can either be the full path or relative path as supported by network_os.
        attribute :dest
        validates :dest, type: String

        # @return [:binary, :text, nil] Set the file transfer mode. If mode is set to I(template) then I(src) file will go through Jinja2 template engine to replace any vars if present in the src file. If mode is set to I(binary) then file will be copied as it is to destination device.
        attribute :mode
        validates :mode, expression_inclusion: {:in=>[:binary, :text], :message=>"%{value} needs to be :binary, :text"}, allow_nil: true
      end
    end
  end
end
