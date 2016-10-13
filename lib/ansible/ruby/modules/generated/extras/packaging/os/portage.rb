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

        # @return [:present, :installed, :emerged, :absent, :removed, :unmerged, nil] State of the package atom
        attribute :state
        validates :state, inclusion: {:in=>[:present, :installed, :emerged, :absent, :removed, :unmerged], :message=>"%{value} needs to be :present, :installed, :emerged, :absent, :removed, :unmerged"}, allow_nil: true

        # @return [:yes, nil] Update packages to the best version available (--update)
        attribute :update
        validates :update, inclusion: {:in=>[:yes], :message=>"%{value} needs to be :yes"}, allow_nil: true

        # @return [:yes, nil] Consider the entire dependency tree of packages (--deep)
        attribute :deep
        validates :deep, inclusion: {:in=>[:yes], :message=>"%{value} needs to be :yes"}, allow_nil: true

        # @return [:yes, nil] Include installed packages where USE flags have changed (--newuse)
        attribute :newuse
        validates :newuse, inclusion: {:in=>[:yes], :message=>"%{value} needs to be :yes"}, allow_nil: true

        # @return [:yes, nil] Include installed packages where USE flags have changed, except when,flags that the user has not enabled are added or removed,(--changed-use)
        attribute :changed_use
        validates :changed_use, inclusion: {:in=>[:yes], :message=>"%{value} needs to be :yes"}, allow_nil: true

        # @return [Boolean, nil] Do not add the packages to the world file (--oneshot)
        attribute :oneshot
        validates :oneshot, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Do not re-emerge installed packages (--noreplace)
        attribute :noreplace
        validates :noreplace, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Only merge packages but not their dependencies (--nodeps)
        attribute :nodeps
        validates :nodeps, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Only merge packages' dependencies but not the packages (--onlydeps)
        attribute :onlydeps
        validates :onlydeps, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Remove packages not needed by explicitly merged packages (--depclean),If no package is specified, clean up the world's dependencies,Otherwise, --depclean serves as a dependency aware version of --unmerge
        attribute :depclean
        validates :depclean, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Run emerge in quiet mode (--quiet)
        attribute :quiet
        validates :quiet, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Run emerge in verbose mode (--verbose)
        attribute :verbose
        validates :verbose, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:yes, :web, :no, nil] Sync package repositories first,If yes, perform "emerge --sync",If web, perform "emerge-webrsync"
        attribute :sync
        validates :sync, inclusion: {:in=>[:yes, :web, :no], :message=>"%{value} needs to be :yes, :web, :no"}, allow_nil: true

        # @return [Boolean, nil] Prefer packages specified at PORTAGE_BINHOST in make.conf
        attribute :getbinpkg
        validates :getbinpkg, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Merge only binaries (no compiling). This sets getbinpkg=yes.
        attribute :usepkgonly
        validates :usepkgonly, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
