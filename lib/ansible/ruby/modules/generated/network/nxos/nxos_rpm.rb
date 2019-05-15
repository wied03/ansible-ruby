# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Install software maintenance upgrade (smu) RPMS and 3rd party RPMS on Cisco NX-OS devices.
      class Nxos_rpm < Base
        # @return [String] Name of the RPM package.
        attribute :pkg
        validates :pkg, presence: true, type: String

        # @return [String, nil] The remote file system of the device. If omitted, devices that support a file_system parameter will use their default values.
        attribute :file_system
        validates :file_system, type: String

        # @return [Object, nil] List of RPM/patch definitions.
        attribute :aggregate

        # @return [:present, :absent, nil] If the state is present, the rpm will be installed, If the state is absent, it will be removed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
