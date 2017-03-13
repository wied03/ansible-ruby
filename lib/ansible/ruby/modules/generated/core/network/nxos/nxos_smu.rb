# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Perform software maintenance upgrades (SMUs) on Cisco NX-OS devices.
      class Nxos_smu < Base
        # @return [String] Name of the remote package.
        attribute :pkg
        validates :pkg, presence: true, type: String

        # @return [Object, nil] The remote file system of the device. If omitted, devices that support a file_system parameter will use their default values.
        attribute :file_system
      end
    end
  end
end
