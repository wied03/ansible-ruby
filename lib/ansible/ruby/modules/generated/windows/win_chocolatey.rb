# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage packages using Chocolatey (U(http://chocolatey.org/)).
      # If Chocolatey is missing from the system, the module will install it.
      # List of packages can be found at U(http://chocolatey.org/packages).
      class Win_chocolatey < Base
        # @return [:yes, :no, nil] Allow empty checksums to be used for downloaded resource from non-secure locations.,Use M(win_chocolatey_feature) with the name C(allowEmptyChecksums) to control this option globally.
        attribute :allow_empty_checksums
        validates :allow_empty_checksums, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Allow the installation of pre-release packages.,If I(state) is C(latest), the latest pre-release package will be installed.
        attribute :allow_prerelease
        validates :allow_prerelease, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:default, :x86, nil] Force Chocolatey to install the package of a specific process architecture.,When setting C(x86), will ensure Chocolatey installs the x86 package even when on an x64 bit OS.
        attribute :architecture
        validates :architecture, expression_inclusion: {:in=>[:default, :x86], :message=>"%{value} needs to be :default, :x86"}, allow_nil: true

        # @return [:yes, :no, nil] Forces the install of a package, even if it already is installed.,Using I(force) will cause Ansible to always report that a change was made.
        attribute :force
        validates :force, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Arguments to pass to the native installer.,These are arguments that are passed directly to the installer the Chocolatey package runs, this is generally an advanced option.
        attribute :install_args
        validates :install_args, type: String

        # @return [:yes, :no, nil] Ignore the checksums provided by the package.,Use M(win_chocolatey_feature) with the name C(checksumFiles) to control this option globally.
        attribute :ignore_checksums
        validates :ignore_checksums, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Ignore dependencies, only install/upgrade the package itself.
        attribute :ignore_dependencies
        validates :ignore_dependencies, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Array<String>, String] Name of the package(s) to be installed.,Set to C(all) to run the action on all the installed packages.
        attribute :name
        validates :name, presence: true, type: TypeGeneric.new(String)

        # @return [String, nil] Parameters to pass to the package.,These are parameters specific to the Chocolatey package and are generally documented by the package itself.,Before Ansible 2.7, this option was just I(params).
        attribute :package_params
        validates :package_params, type: String

        # @return [String, nil] Proxy URL used to install chocolatey and the package.,Use M(win_chocolatey_config) with the name C(proxy) to control this option globally.
        attribute :proxy_url
        validates :proxy_url, type: String

        # @return [String, nil] Proxy username used to install Chocolatey and the package.,Before Ansible 2.7, users with double quote characters C(") would need to be escaped with C(\) beforehand. This is no longer necessary.,Use M(win_chocolatey_config) with the name C(proxyUser) to control this option globally.
        attribute :proxy_username
        validates :proxy_username, type: String

        # @return [String, nil] Proxy password used to install Chocolatey and the package.,This value is exposed as a command argument and any privileged account can see this value when the module is running Chocolatey, define the password on the global config level with M(win_chocolatey_config) with name C(proxyPassword) to avoid this.
        attribute :proxy_password
        validates :proxy_password, type: String

        # @return [:yes, :no, nil] Do not run I(chocolateyInstall.ps1) or I(chocolateyUninstall.ps1) scripts when installing a package.
        attribute :skip_scripts
        validates :skip_scripts, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Specify the source to retrieve the package from.,Use M(win_chocolatey_source) to manage global sources.,This value can either be the URL to a Chocolatey feed, a path to a folder containing C(.nupkg) packages or the name of a source defined by M(win_chocolatey_source).,This value is also used when Chocolatey is not installed as the location of the install.ps1 script and only supports URLs for this case.
        attribute :source
        validates :source, type: String

        # @return [String, nil] A username to use with I(source) when accessing a feed that requires authentication.,It is recommended you define the credentials on a source with M(win_chocolatey_source) instead of passing it per task.
        attribute :source_username
        validates :source_username, type: String

        # @return [String, nil] The password for I(source_username).,This value is exposed as a command argument and any privileged account can see this value when the module is running Chocolatey, define the credentials with a source with M(win_chocolatey_source) to avoid this.
        attribute :source_password
        validates :source_password, type: String

        # @return [String, nil] State of the package on the system.,When C(absent), will ensure the package is not installed.,When C(present), will ensure the package is installed.,When C(downgrade), will allow Chocolatey to downgrade a package if I(version) is older than the installed version.,When C(latest), will ensure the package is installed to the latest available version.,When C(reinstalled), will uninstall and reinstall the package.
        attribute :state
        validates :state, type: String

        # @return [Integer, nil] The time to allow chocolatey to finish before timing out.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [:yes, :no, nil] Used when downloading the Chocolatey install script if Chocolatey is not already installed, this does not affect the Chocolatey package install process.,When C(no), no SSL certificates will be validated.,This should only be used on personally controlled sites using self-signed certificate.
        attribute :validate_certs
        validates :validate_certs, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Specific version of the package to be installed.,Ignored when I(state) is set to C(absent).
        attribute :version
        validates :version, type: String
      end
    end
  end
end
