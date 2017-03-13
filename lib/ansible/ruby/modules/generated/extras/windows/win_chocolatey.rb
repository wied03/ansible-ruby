# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Installs packages using Chocolatey (http://chocolatey.org/). If Chocolatey is missing from the system, the module will install it. List of packages can be found at http://chocolatey.org/packages
      class Win_chocolatey < Base
        # @return [Object] Name of the package to be installed
        attribute :name
        validates :name, presence: true

        # @return [:present, :absent, nil] State of the package on the system
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Forces install of the package (even if it already exists). Using Force will cause ansible to always report that a change was made
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] If package is already installed it, try to upgrade to the latest version or to the specified version
        attribute :upgrade
        validates :upgrade, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Specific version of the package to be installed,Ignored when state == 'absent'
        attribute :version

        # @return [Object, nil] Specify source rather than using default chocolatey repository
        attribute :source

        # @return [Object, nil] Arguments to pass to the native installer
        attribute :install_args

        # @return [Object, nil] Parameters to pass to the package
        attribute :params

        # @return [Boolean, nil] Allow empty Checksums to be used
        attribute :allow_empty_checksums
        validates :allow_empty_checksums, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Ignore Checksums
        attribute :ignore_checksums
        validates :ignore_checksums, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Ignore dependencies, only install/upgrade the package itself
        attribute :ignore_dependencies
        validates :ignore_dependencies, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
