# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Installs, upgrade, removes, and lists packages and groups with the I(yum) package manager.
      class Yum < Base
        # @return [String] Package name, or package specifier with version, like C(name-1.0). When using state=latest, this can be '*' which means run: yum -y update. You can also pass a url or a local path to a rpm file (using state=present).  To operate on several packages this can accept a comma separated list of packages or (as of 2.0) a list of packages.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Package name(s) to exclude when state=present, or latest
        attribute :exclude

        # @return [Object, nil] Various (non-idempotent) commands for usage with C(/usr/bin/ansible) and I(not) playbooks. See examples.
        attribute :list

        # @return [:present, :installed, :latest, :absent, :removed, nil] Whether to install (C(present) or C(installed), C(latest)), or remove (C(absent) or C(removed)) a package.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :installed, :latest, :absent, :removed], :message=>"%{value} needs to be :present, :installed, :latest, :absent, :removed"}, allow_nil: true

        # @return [String, nil] I(Repoid) of repositories to enable for the install/update operation. These repos will not persist beyond the transaction. When specifying multiple repos, separate them with a ",".
        attribute :enablerepo
        validates :enablerepo, type: String

        # @return [Object, nil] I(Repoid) of repositories to disable for the install/update operation. These repos will not persist beyond the transaction. When specifying multiple repos, separate them with a ",".
        attribute :disablerepo

        # @return [Object, nil] The remote yum configuration file to use for the transaction.
        attribute :conf_file

        # @return [:yes, :no, nil] Whether to disable the GPG checking of signatures of packages being installed. Has an effect only if state is I(present) or I(latest).
        attribute :disable_gpg_check
        validates :disable_gpg_check, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Force updating the cache. Has an effect only if state is I(present) or I(latest).
        attribute :update_cache
        validates :update_cache, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] This only applies if using a https url as the source of the rpm. e.g. for localinstall. If set to C(no), the SSL certificates will not be validated.,This should only set to C(no) used on personally controlled sites using self-signed certificates as it avoids verifying the source site.,Prior to 2.1 the code worked as if this was set to C(yes).
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
