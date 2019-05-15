# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages Gentoo packages
      class Portage < Base
        # @return [String, nil] Package atom or set, e.g. C(sys-apps/foo) or C(>foo-2.13) or C(@world)
        attribute :package
        validates :package, type: String

        # @return [:present, :installed, :emerged, :absent, :removed, :unmerged, :latest, nil] State of the package atom
        attribute :state
        validates :state, inclusion: {:in=>[:present, :installed, :emerged, :absent, :removed, :unmerged, :latest], :message=>"%{value} needs to be :present, :installed, :emerged, :absent, :removed, :unmerged, :latest"}, allow_nil: true

        # @return [String, nil] Update packages to the best version available (--update)
        attribute :update
        validates :update, type: String

        # @return [String, nil] Consider the entire dependency tree of packages (--deep)
        attribute :deep
        validates :deep, type: String

        # @return [String, nil] Include installed packages where USE flags have changed (--newuse)
        attribute :newuse
        validates :newuse, type: String

        # @return [String, nil] Include installed packages where USE flags have changed, except when,flags that the user has not enabled are added or removed,(--changed-use)
        attribute :changed_use
        validates :changed_use, type: String

        # @return [String, nil] Do not add the packages to the world file (--oneshot)
        attribute :oneshot
        validates :oneshot, type: String

        # @return [String, nil] Do not re-emerge installed packages (--noreplace)
        attribute :noreplace
        validates :noreplace, type: String

        # @return [String, nil] Only merge packages but not their dependencies (--nodeps)
        attribute :nodeps
        validates :nodeps, type: String

        # @return [String, nil] Only merge packages' dependencies but not the packages (--onlydeps)
        attribute :onlydeps
        validates :onlydeps, type: String

        # @return [String, nil] Remove packages not needed by explicitly merged packages (--depclean),If no package is specified, clean up the world's dependencies,Otherwise, --depclean serves as a dependency aware version of --unmerge
        attribute :depclean
        validates :depclean, type: String

        # @return [String, nil] Run emerge in quiet mode (--quiet)
        attribute :quiet
        validates :quiet, type: String

        # @return [String, nil] Run emerge in verbose mode (--verbose)
        attribute :verbose
        validates :verbose, type: String

        # @return [:web, :yes, :no, nil] Sync package repositories first,If yes, perform "emerge --sync",If web, perform "emerge-webrsync"
        attribute :sync
        validates :sync, inclusion: {:in=>[:web, :yes, :no], :message=>"%{value} needs to be :web, :yes, :no"}, allow_nil: true

        # @return [String, nil] Prefer packages specified at PORTAGE_BINHOST in make.conf
        attribute :getbinpkg
        validates :getbinpkg, type: String

        # @return [String, nil] Merge only binaries (no compiling). This sets getbinpkg=yes.
        attribute :usepkgonly
        validates :usepkgonly, type: String

        # @return [String, nil] Continue as much as possible after an error.
        attribute :keepgoing
        validates :keepgoing, type: String

        # @return [Object, nil] Specifies the number of packages to build simultaneously.,Since version 2.6: Value of 0 or False resets any previously added,--jobs setting values
        attribute :jobs

        # @return [Object, nil] Specifies that no new builds should be started if there are,other builds running and the load average is at least LOAD,Since version 2.6: Value of 0 or False resets any previously added,--load-average setting values
        attribute :loadavg

        # @return [String, nil] Redirect all build output to logs alone, and do not display it,on stdout (--quiet-build)
        attribute :quietbuild
        validates :quietbuild, type: String

        # @return [String, nil] Suppresses display of the build log on stdout (--quiet-fail),Only the die message and the path of the build log will be,displayed on stdout.
        attribute :quietfail
        validates :quietfail, type: String
      end
    end
  end
end
