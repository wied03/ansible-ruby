# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove Zypper repositories on SUSE and openSUSE
      class Zypper_repository < Base
        # @return [String, nil] A name for the repository. Not required when adding repofiles.
        attribute :name
        validates :name, type: String

        # @return [String, nil] URI of the repository or .repo file. Required when state=present.
        attribute :repo
        validates :repo, type: String

        # @return [:absent, :present, nil] A source string state.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Object, nil] A description of the repository
        attribute :description

        # @return [:yes, :no, nil] Whether to disable GPG signature checking of all packages. Has an effect only if state is I(present).,Needs zypper version >= 1.6.2.
        attribute :disable_gpg_check
        validates :disable_gpg_check, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Enable autorefresh of the repository.
        attribute :autorefresh
        validates :autorefresh, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Set priority of repository. Packages will always be installed from the repository with the smallest priority number.,Needs zypper version >= 1.12.25.
        attribute :priority

        # @return [:yes, :no, nil] Overwrite multiple repository entries, if repositories with both name and URL already exist.
        attribute :overwrite_multiple
        validates :overwrite_multiple, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Automatically import the gpg signing key of the new or changed repository.,Has an effect only if state is I(present). Has no effect on existing (unchanged) repositories or in combination with I(absent).,Implies runrefresh.,Only works with C(.repo) files if `name` is given explicitly.
        attribute :auto_import_keys
        validates :auto_import_keys, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Refresh the package list of the given repository.,Can be used with repo=* to refresh all repositories.
        attribute :runrefresh
        validates :runrefresh, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Set repository to enabled (or disabled).
        attribute :enabled
        validates :enabled, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
