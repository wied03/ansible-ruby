# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can install new and updated packages on remote devices running Junos.  The module will compare the specified package with the one running on the remote device and install the specified version if there is a mismatch
      class Junos_package < Base
        # @return [String] The O(src) argument specifies the path to the source package to be installed on the remote device in the advent of a version mismatch. The O(src) argument can be either a localized path or a full path to the package file to install
        attribute :src
        validates :src, presence: true, type: String

        # @return [Object, nil] The O(version) argument can be used to explicitly specify the version of the package that should be installed on the remote device.  If the O(version) argument is not specified, then the version is extracts from the O(src) filename
        attribute :version

        # @return [Boolean] In order for a package to take effect, the remote device must be restarted.  When enabled, this argument will instruct the module to reboot the device once the updated package has been installed. If disabled or the remote package does not need to be changed, the device will not be started.
        attribute :reboot
        validates :reboot, presence: true, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}

        # @return [Boolean, nil] The O(no_copy) arugment is responsible for instructing the remote device on where to isntall the package from.  When enabled, the package is transferred to the remote device prior to installing.
        attribute :no_copy
        validates :no_copy, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] The O(force) argument instructs the module to bypass the package version check and install the packaged identified in O(src) on the remote device.
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
