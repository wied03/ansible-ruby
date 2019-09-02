# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Installs or uninstalls a Windows MSI file that is already located on the target server.
      class Win_msi < Base
        # @return [String] File system path to the MSI file to install.
        attribute :path
        validates :path, presence: true, type: String

        # @return [Object, nil] Additional arguments to pass to the msiexec.exe command.
        attribute :extra_args

        # @return [:absent, :present, nil] Whether the MSI file should be installed or uninstalled.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Path to a file created by installing the MSI to prevent from attempting to reinstall the package on every run.
        attribute :creates
        validates :creates, type: String

        # @return [String, nil] Path to a file removed by uninstalling the MSI to prevent from attempting to re-uninstall the package on every run.
        attribute :removes
        validates :removes, type: String

        # @return [:yes, :no, nil] Specify whether to wait for install or uninstall to complete before continuing.
        attribute :wait
        validates :wait, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
