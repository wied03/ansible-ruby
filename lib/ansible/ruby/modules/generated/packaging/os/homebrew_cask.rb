# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages Homebrew casks.
      class Homebrew_cask < Base
        # @return [String] name of cask to install/remove
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] ':' separated list of paths to search for 'brew' executable.
        attribute :path
        validates :path, type: String

        # @return [:present, :absent, :upgraded, nil] state of the cask
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :upgraded], :message=>"%{value} needs to be :present, :absent, :upgraded"}, allow_nil: true

        # @return [String, nil] update homebrew itself first. Note that C(brew cask update) is a synonym for C(brew update).
        attribute :update_homebrew
        validates :update_homebrew, type: String

        # @return [Array<String>, String, nil] options flags to install a package
        attribute :install_options
        validates :install_options, type: TypeGeneric.new(String)

        # @return [String, nil] allow external apps
        attribute :accept_external_apps
        validates :accept_external_apps, type: String

        # @return [String, nil] upgrade all casks (mutually exclusive with `upgrade`)
        attribute :upgrade_all
        validates :upgrade_all, type: String

        # @return [String, nil] upgrade all casks (mutually exclusive with `upgrade_all`)
        attribute :upgrade
        validates :upgrade, type: String

        # @return [String, nil] upgrade casks that auto update; passes --greedy to brew cask outdated when checking if an installed cask has a newer version available
        attribute :greedy
        validates :greedy, type: String
      end
    end
  end
end
