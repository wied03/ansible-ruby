# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides functionality to copy file from network device to ansible controller.
      class Net_get < Base
        # @return [String] Specifies the source file. The path to the source file can either be the full path on the network device or a relative path as per path supported by destination network device.
        attribute :src
        validates :src, presence: true, type: String

        # @return [:scp, :sftp, nil] Protocol used to transfer file.
        attribute :protocol
        validates :protocol, expression_inclusion: {:in=>[:scp, :sftp], :message=>"%{value} needs to be :scp, :sftp"}, allow_nil: true

        # @return [String, nil] Specifies the destination file. The path to the destination file can either be the full path on the Ansible control host or a relative path from the playbook or role root directory.
        attribute :dest
        validates :dest, type: String
      end
    end
  end
end
