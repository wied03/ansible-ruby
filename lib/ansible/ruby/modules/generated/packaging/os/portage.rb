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
        validates :state, expression_inclusion: {:in=>[:present, :installed, :emerged, :absent, :removed, :unmerged, :latest], :message=>"%{value} needs to be :present, :installed, :emerged, :absent, :removed, :unmerged, :latest"}, allow_nil: true

        # @return [:yes, :no, nil] Update packages to the best version available (--update)
        attribute :update
        validates :update, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Consider the entire dependency tree of packages (--deep)
        attribute :deep
        validates :deep, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Include installed packages where USE flags have changed (--newuse)
        attribute :newuse
        validates :newuse, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Include installed packages where USE flags have changed, except when,flags that the user has not enabled are added or removed,(--changed-use)
        attribute :changed_use
        validates :changed_use, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Do not add the packages to the world file (--oneshot)
        attribute :oneshot
        validates :oneshot, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Do not re-emerge installed packages (--noreplace)
        attribute :noreplace
        validates :noreplace, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Only merge packages but not their dependencies (--nodeps)
        attribute :nodeps
        validates :nodeps, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Only merge packages' dependencies but not the packages (--onlydeps)
        attribute :onlydeps
        validates :onlydeps, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Remove packages not needed by explicitly merged packages (--depclean),If no package is specified, clean up the world's dependencies,Otherwise, --depclean serves as a dependency aware version of --unmerge
        attribute :depclean
        validates :depclean, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Run emerge in quiet mode (--quiet)
        attribute :quiet
        validates :quiet, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Run emerge in verbose mode (--verbose)
        attribute :verbose
        validates :verbose, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:web, :yes, :no, nil] Sync package repositories first,If yes, perform "emerge --sync",If web, perform "emerge-webrsync"
        attribute :sync
        validates :sync, expression_inclusion: {:in=>[:web, :yes, :no], :message=>"%{value} needs to be :web, :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Prefer packages specified at PORTAGE_BINHOST in make.conf
        attribute :getbinpkg
        validates :getbinpkg, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Merge only binaries (no compiling). This sets getbinpkg=yes.
        attribute :usepkgonly
        validates :usepkgonly, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Continue as much as possible after an error.
        attribute :keepgoing
        validates :keepgoing, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Specifies the number of packages to build simultaneously.,Since version 2.6: Value of 0 or False resets any previously added,--jobs setting values
        attribute :jobs

        # @return [Object, nil] Specifies that no new builds should be started if there are,other builds running and the load average is at least LOAD,Since version 2.6: Value of 0 or False resets any previously added,--load-average setting values
        attribute :loadavg

        # @return [:yes, :no, nil] Redirect all build output to logs alone, and do not display it,on stdout (--quiet-build)
        attribute :quietbuild
        validates :quietbuild, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Suppresses display of the build log on stdout (--quiet-fail),Only the die message and the path of the build log will be,displayed on stdout.
        attribute :quietfail
        validates :quietfail, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
