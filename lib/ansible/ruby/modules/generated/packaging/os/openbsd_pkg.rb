# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage packages on OpenBSD using the pkg tools.
      class Openbsd_pkg < Base
        # @return [String] Name of the package.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :latest, :absent] C(present) will make sure the package is installed. C(latest) will make sure the latest version of the package is installed. C(absent) will make sure the specified package is not installed.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :latest, :absent], :message=>"%{value} needs to be :present, :latest, :absent"}

        # @return [Boolean, nil] Build the package from source instead of downloading and installing a binary. Requires that the port source tree is already installed. Automatically builds and installs the 'sqlports' package, if it is not already installed.
        attribute :build
        validates :build, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] When used in combination with the 'build' option, allows overriding the default ports source directory.
        attribute :ports_dir
        validates :ports_dir, type: String

        # @return [Boolean, nil] When updating or removing packages, delete the extra configuration file(s) in the old packages which are annotated with @extra in the packaging-list.
        attribute :clean
        validates :clean, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Replace or delete packages quickly; do not bother with checksums before removing normal files.
        attribute :quick
        validates :quick, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
