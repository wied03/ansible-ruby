# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Installs, upgrade, removes, and lists packages and groups with the I(dnf) package manager.
      class Dnf < Base
        # @return [String] A package name or package specifier with version, like C(name-1.0). When using state=latest, this can be '*' which means run: dnf -y update. You can also pass a url or a local path to a rpm file. To operate on several packages this can accept a comma separated string of packages or a list of packages.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Various (non-idempotent) commands for usage with C(/usr/bin/ansible) and I(not) playbooks. See examples.
        attribute :list

        # @return [:absent, :present, :installed, :removed, :latest, nil] Whether to install (C(present), C(latest)), or remove (C(absent)) a package.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :installed, :removed, :latest], :message=>"%{value} needs to be :absent, :present, :installed, :removed, :latest"}, allow_nil: true

        # @return [String, nil] I(Repoid) of repositories to enable for the install/update operation. These repos will not persist beyond the transaction. When specifying multiple repos, separate them with a ",".
        attribute :enablerepo
        validates :enablerepo, type: String

        # @return [Object, nil] I(Repoid) of repositories to disable for the install/update operation. These repos will not persist beyond the transaction. When specifying multiple repos, separate them with a ",".
        attribute :disablerepo

        # @return [Object, nil] The remote dnf configuration file to use for the transaction.
        attribute :conf_file

        # @return [:yes, :no, nil] Whether to disable the GPG checking of signatures of packages being installed. Has an effect only if state is I(present) or I(latest).
        attribute :disable_gpg_check
        validates :disable_gpg_check, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Specifies an alternative installroot, relative to which all packages will be installed.
        attribute :installroot
        validates :installroot, type: String

        # @return [Object, nil] Specifies an alternative release from which all packages will be installed.
        attribute :releasever

        # @return [Symbol, nil] If C(yes), removes all "leaf" packages from the system that were originally installed as dependencies of user-installed packages but which are no longer required by any such package. Should be used alone or when state is I(absent)
        attribute :autoremove
        validates :autoremove, type: Symbol

        # @return [Object, nil] Package name(s) to exclude when state=present, or latest. This can be a list or a comma separated string.
        attribute :exclude

        # @return [:yes, :no, nil] Skip packages with broken dependencies(devsolve) and are causing problems.
        attribute :skip_broken
        validates :skip_broken, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Force yum to check if cache is out of date and redownload if needed. Has an effect only if state is I(present) or I(latest).
        attribute :update_cache
        validates :update_cache, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] When using latest, only update installed packages. Do not install packages.,Has an effect only if state is I(latest)
        attribute :update_only
        validates :update_only, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If set to C(yes), and C(state=latest) then only installs updates that have been marked security related.
        attribute :security
        validates :security, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If set to C(yes), and C(state=latest) then only installs updates that have been marked bugfix related.
        attribute :bugfix
        validates :bugfix, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] I(Plugin) name to enable for the install/update operation. The enabled plugin will not persist beyond the transaction.
        attribute :enable_plugin

        # @return [Object, nil] I(Plugin) name to disable for the install/update operation. The disabled plugins will not persist beyond the transaction.
        attribute :disable_plugin

        # @return [Object, nil] Disable the excludes defined in DNF config files.,If set to C(all), disables all excludes.,If set to C(main), disable excludes defined in [main] in yum.conf.,If set to C(repoid), disable excludes defined for given repo id.
        attribute :disable_excludes

        # @return [:yes, :no, nil] This only applies if using a https url as the source of the rpm. e.g. for localinstall. If set to C(no), the SSL certificates will not be validated.,This should only set to C(no) used on personally controlled sites using self-signed certificates as it avoids verifying the source site.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Symbol, nil] Specify if the named package and version is allowed to downgrade a maybe already installed higher version of that package. Note that setting allow_downgrade=True can make this module behave in a non-idempotent way. The task could end up with a set of packages that does not match the complete list of specified packages to install (because dependencies between the downgraded package and others can cause changes to the packages which were in the earlier transaction).
        attribute :allow_downgrade
        validates :allow_downgrade, type: Symbol

        # @return [Boolean, nil] This is effectively a no-op in DNF as it is not needed with DNF, but is an accepted parameter for feature parity/compatibility with the I(yum) module.
        attribute :install_repoquery
        validates :install_repoquery, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:yes, :no, nil] Only download the packages, do not install them.
        attribute :download_only
        validates :download_only, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
