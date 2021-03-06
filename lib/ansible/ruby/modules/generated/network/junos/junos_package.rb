# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can install new and updated packages on remote devices running Junos.  The module will compare the specified package with the one running on the remote device and install the specified version if there is a mismatch
      class Junos_package < Base
        # @return [String] The I(src) argument specifies the path to the source package to be installed on the remote device in the advent of a version mismatch. The I(src) argument can be either a localized path or a full path to the package file to install.
        attribute :src
        validates :src, presence: true, type: String

        # @return [Object, nil] The I(version) argument can be used to explicitly specify the version of the package that should be installed on the remote device.  If the I(version) argument is not specified, then the version is extracts from the I(src) filename.
        attribute :version

        # @return [:yes, :no] In order for a package to take effect, the remote device must be restarted.  When enabled, this argument will instruct the module to reboot the device once the updated package has been installed. If disabled or the remote package does not need to be changed, the device will not be started.
        attribute :reboot
        validates :reboot, presence: true, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}

        # @return [:yes, :no, nil] The I(no_copy) argument is responsible for instructing the remote device on where to install the package from.  When enabled, the package is transferred to the remote device prior to installing.
        attribute :no_copy
        validates :no_copy, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] The I(validate) argument is responsible for instructing the remote device to skip checking the current device configuration compatibility with the package being installed. When set to false validation is not performed.
        attribute :validate
        validates :validate, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no] The I(force) argument instructs the module to bypass the package version check and install the packaged identified in I(src) on the remote device.
        attribute :force
        validates :force, presence: true, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}
      end
    end
  end
end
