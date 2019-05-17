# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module transfers files via SCP from or to remote devices running Junos.
      class Junos_scp < Base
        # @return [String] The C(src) argument takes a single path, or a list of paths to be transfered. The argument C(recursive) must be C(true) to transfer directories.
        attribute :src
        validates :src, presence: true, type: String

        # @return [String, nil] The C(dest) argument specifies the path in which to receive the files.
        attribute :dest
        validates :dest, type: String

        # @return [:yes, :no, nil] The C(recursive) argument enables recursive transfer of files and directories.
        attribute :recursive
        validates :recursive, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] The C(remote_src) argument enables the download of files (I(scp get)) from the remote device. The default behavior is to upload files (I(scp put)) to the remote device.
        attribute :remote_src
        validates :remote_src, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
