# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Installs, upgrade, downgrades, removes, and lists packages and groups with the I(yum) package manager.
      # This module only works on Python 2. If you require Python 3 support see the M(dnf) module.
      class Yum < Base
        # @return [:auto, :yum, :yum4, :dnf, nil] This module supports C(yum) (as it always has), this is known as C(yum3)/C(YUM3)/C(yum-deprecated) by upstream yum developers. As of Ansible 2.7+, this module also supports C(YUM4), which is the "new yum" and it has an C(dnf) backend.,By default, this module will select the backend based on the C(ansible_pkg_mgr) fact.
        attribute :use_backend
        validates :use_backend, expression_inclusion: {:in=>[:auto, :yum, :yum4, :dnf], :message=>"%{value} needs to be :auto, :yum, :yum4, :dnf"}, allow_nil: true

        # @return [Array<String>, String, nil] A package name or package specifier with version, like C(name-1.0).,If a previous version is specified, the task also needs to turn C(allow_downgrade) on. See the C(allow_downgrade) documentation for caveats with downgrading packages.,When using state=latest, this can be C('*') which means run C(yum -y update).,You can also pass a url or a local path to a rpm file (using state=present). To operate on several packages this can accept a comma separated string of packages or (as of 2.0) a list of packages.
        attribute :name
        validates :name, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] Package name(s) to exclude when state=present, or latest
        attribute :exclude
        validates :exclude, type: TypeGeneric.new(String)

        # @return [String, nil] Package name to run the equivalent of yum list <package> against. In addition to listing packages, use can also list the following: C(installed), C(updates), C(available) and C(repos).
        attribute :list
        validates :list, type: String

        # @return [:absent, :installed, :latest, :present, :removed, nil] Whether to install (C(present) or C(installed), C(latest)), or remove (C(absent) or C(removed)) a package.,C(present) and C(installed) will simply ensure that a desired package is installed.,C(latest) will update the specified package if it's not of the latest available version.,C(absent) and C(removed) will remove the specified package.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :installed, :latest, :present, :removed], :message=>"%{value} needs to be :absent, :installed, :latest, :present, :removed"}, allow_nil: true

        # @return [Array<String>, String, nil] I(Repoid) of repositories to enable for the install/update operation. These repos will not persist beyond the transaction. When specifying multiple repos, separate them with a C(",").,As of Ansible 2.7, this can alternatively be a list instead of C(",") separated string
        attribute :enablerepo
        validates :enablerepo, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] I(Repoid) of repositories to disable for the install/update operation. These repos will not persist beyond the transaction. When specifying multiple repos, separate them with a C(",").,As of Ansible 2.7, this can alternatively be a list instead of C(",") separated string
        attribute :disablerepo
        validates :disablerepo, type: TypeGeneric.new(String)

        # @return [Object, nil] The remote yum configuration file to use for the transaction.
        attribute :conf_file

        # @return [:yes, :no, nil] Whether to disable the GPG checking of signatures of packages being installed. Has an effect only if state is I(present) or I(latest).
        attribute :disable_gpg_check
        validates :disable_gpg_check, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Skip packages with broken dependencies(devsolve) and are causing problems.
        attribute :skip_broken
        validates :skip_broken, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Force yum to check if cache is out of date and redownload if needed. Has an effect only if state is I(present) or I(latest).
        attribute :update_cache
        validates :update_cache, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] This only applies if using a https url as the source of the rpm. e.g. for localinstall. If set to C(no), the SSL certificates will not be validated.,This should only set to C(no) used on personally controlled sites using self-signed certificates as it avoids verifying the source site.,Prior to 2.1 the code worked as if this was set to C(yes).
        attribute :validate_certs
        validates :validate_certs, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] When using latest, only update installed packages. Do not install packages.,Has an effect only if state is I(latest)
        attribute :update_only
        validates :update_only, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Specifies an alternative installroot, relative to which all packages will be installed.
        attribute :installroot
        validates :installroot, type: String

        # @return [:yes, :no, nil] If set to C(yes), and C(state=latest) then only installs updates that have been marked security related.
        attribute :security
        validates :security, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] If set to C(yes), and C(state=latest) then only installs updates that have been marked bugfix related.
        attribute :bugfix
        validates :bugfix, type: String

        # @return [:yes, :no, nil] Specify if the named package and version is allowed to downgrade a maybe already installed higher version of that package. Note that setting allow_downgrade=True can make this module behave in a non-idempotent way. The task could end up with a set of packages that does not match the complete list of specified packages to install (because dependencies between the downgraded package and others can cause changes to the packages which were in the earlier transaction).
        attribute :allow_downgrade
        validates :allow_downgrade, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] I(Plugin) name to enable for the install/update operation. The enabled plugin will not persist beyond the transaction.
        attribute :enable_plugin

        # @return [Object, nil] I(Plugin) name to disable for the install/update operation. The disabled plugins will not persist beyond the transaction.
        attribute :disable_plugin

        # @return [Object, nil] Specifies an alternative release from which all packages will be installed.
        attribute :releasever

        # @return [Symbol, nil] If C(yes), removes all "leaf" packages from the system that were originally installed as dependencies of user-installed packages but which are no longer required by any such package. Should be used alone or when state is I(absent),NOTE: This feature requires yum >= 3.4.3 (RHEL/CentOS 7+)
        attribute :autoremove
        validates :autoremove, type: Symbol

        # @return [Object, nil] Disable the excludes defined in YUM config files.,If set to C(all), disables all excludes.,If set to C(main), disable excludes defined in [main] in yum.conf.,If set to C(repoid), disable excludes defined for given repo id.
        attribute :disable_excludes

        # @return [:yes, :no, nil] Only download the packages, do not install them.
        attribute :download_only
        validates :download_only, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
