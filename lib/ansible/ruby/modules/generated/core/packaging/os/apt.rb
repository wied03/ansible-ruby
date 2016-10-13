# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages I(apt) packages (such as for Debian/Ubuntu).
      class Apt < Base
        # @return [String, nil] A package name, like C(foo), or package specifier with version, like C(foo=1.0). Name wildcards (fnmatch) like C(apt*) and version wildcards like C(foo=1.0*) are also supported.  Note that the apt-get commandline supports implicit regex matches here but we do not because it can let typos through easier (If you typo C(foo) as C(fo) apt-get would install packages that have "fo" in their name with a warning and a prompt for the user.  Since we don't have warnings and prompts before installing we disallow this.  Use an explicit fnmatch pattern if you want wildcarding)
        attribute :name
        validates :name, type: String

        # @return [:latest, :absent, :present, :"build-dep", nil] Indicates the desired package state. C(latest) ensures that the latest version is installed. C(build-dep) ensures the package build dependencies are installed.
        attribute :state
        validates :state, inclusion: {:in=>[:latest, :absent, :present, :"build-dep"], :message=>"%{value} needs to be :latest, :absent, :present, :\"build-dep\""}, allow_nil: true

        # @return [Boolean, nil] Run the equivalent of C(apt-get update) before the operation. Can be run as part of the package installation or as a separate step.
        attribute :update_cache
        validates :update_cache, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] If C(update_cache) is specified and the last run is less or equal than I(cache_valid_time) seconds ago, the C(update_cache) gets skipped.
        attribute :cache_valid_time
        validates :cache_valid_time, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Will force purging of configuration files if the module state is set to I(absent).
        attribute :purge
        validates :purge, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Corresponds to the C(-t) option for I(apt) and sets pin priorities
        attribute :default_release
        validates :default_release, type: String

        # @return [:yes, :no, nil] Corresponds to the C(--no-install-recommends) option for I(apt). C(yes) installs recommended packages.  C(no) does not install recommended packages. By default, Ansible will use the same defaults as the operating system. Suggested packages are never installed.
        attribute :install_recommends
        validates :install_recommends, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If C(yes), force installs/removes.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Ignore if packages cannot be authenticated. This is useful for bootstrapping environments that manage their own apt-key setup.
        attribute :allow_unauthenticated
        validates :allow_unauthenticated, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:no, :yes, :safe, :full, :dist, nil] If yes or safe, performs an aptitude safe-upgrade.,If full, performs an aptitude full-upgrade.,If dist, performs an apt-get dist-upgrade.,Note: This does not upgrade a specific package, use state=latest for that.
        attribute :upgrade
        validates :upgrade, inclusion: {:in=>[:no, :yes, :safe, :full, :dist], :message=>"%{value} needs to be :no, :yes, :safe, :full, :dist"}, allow_nil: true

        # @return [Array<String>, String, nil] Add dpkg options to apt command. Defaults to '-o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"',Options should be supplied as comma separated list
        attribute :dpkg_options
        validates :dpkg_options, type: TypeGeneric.new(String)

        # @return [String, nil] Path to a .deb package on the remote machine.,If :// in the path, ansible will attempt to download deb before installing. (Version added 2.1)
        attribute :deb
        validates :deb, type: String

        # @return [Boolean, nil] If C(yes), remove unused dependency packages for all module states except I(build-dep).
        attribute :autoremove
        validates :autoremove, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Only install/upgrade a package if it is already installed.
        attribute :only_upgrade
        validates :only_upgrade, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
