# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Installs, upgrade, removes, and lists packages and groups with the I(dnf) package manager.
      class Dnf < Base
        # @return [String] Package name, or package specifier with version, like C(name-1.0). When using state=latest, this can be '*' which means run: dnf -y update. You can also pass a url or a local path to a rpm file.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Various (non-idempotent) commands for usage with C(/usr/bin/ansible) and I(not) playbooks. See examples.
        attribute :list

        # @return [:present, :latest, :absent, nil] Whether to install (C(present), C(latest)), or remove (C(absent)) a package.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :latest, :absent], :message=>"%{value} needs to be :present, :latest, :absent"}, allow_nil: true

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
      end
    end
  end
end
