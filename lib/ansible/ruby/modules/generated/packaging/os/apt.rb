# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages I(apt) packages (such as for Debian/Ubuntu).
      class Apt < Base
        # @return [String, nil] A list of package names, like C(foo), or package specifier with version, like C(foo=1.0). Name wildcards (fnmatch) like C(apt*) and version wildcards like C(foo=1.0*) are also supported.
        attribute :name
        validates :name, type: String

        # @return [:absent, :"build-dep", :latest, :present, nil] Indicates the desired package state. C(latest) ensures that the latest version is installed. C(build-dep) ensures the package build dependencies are installed.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :"build-dep", :latest, :present], :message=>"%{value} needs to be :absent, :\"build-dep\", :latest, :present"}, allow_nil: true

        # @return [String, nil] Run the equivalent of C(apt-get update) before the operation. Can be run as part of the package installation or as a separate step.
        attribute :update_cache
        validates :update_cache, type: String

        # @return [Integer, nil] Update the apt cache if its older than the I(cache_valid_time). This option is set in seconds. As of Ansible 2.4, this sets I(update_cache=yes).
        attribute :cache_valid_time
        validates :cache_valid_time, type: Integer

        # @return [String, nil] Will force purging of configuration files if the module state is set to I(absent).
        attribute :purge
        validates :purge, type: String

        # @return [String, nil] Corresponds to the C(-t) option for I(apt) and sets pin priorities
        attribute :default_release
        validates :default_release, type: String

        # @return [Boolean, nil] Corresponds to the C(--no-install-recommends) option for I(apt). C(yes) installs recommended packages.  C(no) does not install recommended packages. By default, Ansible will use the same defaults as the operating system. Suggested packages are never installed.
        attribute :install_recommends
        validates :install_recommends, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Corresponds to the C(--force-yes) to I(apt-get) and implies C(allow_unauthenticated: yes),This option will disable checking both the packages' signatures and the certificates of the web servers they are downloaded from.,This option *is not* the equivalent of passing the C(-f) flag to I(apt-get) on the command line,**This is a destructive operation with the potential to destroy your system, and it should almost never be used.** Please also see C(man apt-get) for more information.
        attribute :force
        validates :force, type: String

        # @return [String, nil] Ignore if packages cannot be authenticated. This is useful for bootstrapping environments that manage their own apt-key setup.,C(allow_unauthenticated) is only supported with state: I(install)/I(present)
        attribute :allow_unauthenticated
        validates :allow_unauthenticated, type: String

        # @return [:dist, :full, :no, :safe, :yes, nil] If yes or safe, performs an aptitude safe-upgrade.,If full, performs an aptitude full-upgrade.,If dist, performs an apt-get dist-upgrade.,Note: This does not upgrade a specific package, use state=latest for that.,Note: Since 2.4, apt-get is used as a fall-back if aptitude is not present.
        attribute :upgrade
        validates :upgrade, inclusion: {:in=>[:dist, :full, :no, :safe, :yes], :message=>"%{value} needs to be :dist, :full, :no, :safe, :yes"}, allow_nil: true

        # @return [Array<String>, String, nil] Add dpkg options to apt command. Defaults to '-o "Dpkg::Options::=--force-confdef" -o "Dpkg::Options::=--force-confold"',Options should be supplied as comma separated list
        attribute :dpkg_options
        validates :dpkg_options, type: TypeGeneric.new(String)

        # @return [String, nil] Path to a .deb package on the remote machine.,If :// in the path, ansible will attempt to download deb before installing. (Version added 2.1)
        attribute :deb
        validates :deb, type: String

        # @return [String, nil] If C(yes), remove unused dependency packages for all module states except I(build-dep). It can also be used as the only option.,Previous to version 2.4, autoclean was also an alias for autoremove, now it is its own separate command. See documentation for further information.
        attribute :autoremove
        validates :autoremove, type: String

        # @return [String, nil] If C(yes), cleans the local repository of retrieved package files that can no longer be downloaded.
        attribute :autoclean
        validates :autoclean, type: String

        # @return [String, nil] Only upgrade a package if it is already installed.
        attribute :only_upgrade
        validates :only_upgrade, type: String

        # @return [String, nil] Force usage of apt-get instead of aptitude
        attribute :force_apt_get
        validates :force_apt_get, type: String
      end
    end
  end
end
