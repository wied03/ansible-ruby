# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_msi < Base
        # @return [String] File system path to the MSI file to install
        attribute :path
        validates :path, presence: true, type: String

        # @return [Object] Additional arguments to pass to the msiexec.exe command
        attribute :extra_args

        # @return [:present, :absent, nil] Whether the MSI file should be installed or uninstalled
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] Path to a file created by installing the MSI to prevent from attempting to reinstall the package on every run
        attribute :creates

        # @return [Boolean, nil] Specify whether to wait for install or uninstall to complete before continuing.
        attribute :wait
        validates :wait, inclusion: {:in=>[true, true, false, false], :message=>"%{value} needs to be true, true, false, false"}, allow_nil: true
      end
    end
  end
end
