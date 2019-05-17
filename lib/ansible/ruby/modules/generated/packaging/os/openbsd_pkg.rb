# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage packages on OpenBSD using the pkg tools.
      class Openbsd_pkg < Base
        # @return [String] A name or a list of names of the packages.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :latest, :present, nil] C(present) will make sure the package is installed. C(latest) will make sure the latest version of the package is installed. C(absent) will make sure the specified package is not installed.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :latest, :present], :message=>"%{value} needs to be :absent, :latest, :present"}, allow_nil: true

        # @return [:yes, :no, nil] Build the package from source instead of downloading and installing a binary. Requires that the port source tree is already installed. Automatically builds and installs the 'sqlports' package, if it is not already installed.
        attribute :build
        validates :build, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] When used in combination with the C(build) option, allows overriding the default ports source directory.
        attribute :ports_dir
        validates :ports_dir, type: String

        # @return [:yes, :no, nil] When updating or removing packages, delete the extra configuration file(s) in the old packages which are annotated with @extra in the packaging-list.
        attribute :clean
        validates :clean, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Replace or delete packages quickly; do not bother with checksums before removing normal files.
        attribute :quick
        validates :quick, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
