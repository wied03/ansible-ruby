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
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] A description of the repository
        attribute :description
        validates :description, type: String

        # @return [:yes, :no, nil] Whether to disable GPG signature checking of all packages. Has an effect only if state is I(present).,Needs zypper version >= 1.6.2.
        attribute :disable_gpg_check
        validates :disable_gpg_check, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Enable autorefresh of the repository.
        attribute :refresh
        validates :refresh, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Set priority of repository. Packages will always be installed from the repository with the smallest priority number.,Needs zypper version >= 1.12.25.
        attribute :priority

        # @return [:yes, :no, nil] Overwrite multiple repository entries, if repositories with both name and URL already exist.
        attribute :overwrite_multiple
        validates :overwrite_multiple, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
