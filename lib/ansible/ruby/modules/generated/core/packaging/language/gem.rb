# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage installation and uninstallation of Ruby gems.
      class Gem < Base
        # @return [String] The name of the gem to be managed.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, :latest, nil] The desired state of the gem. C(latest) ensures that the latest version is installed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :latest], :message=>"%{value} needs to be :present, :absent, :latest"}, allow_nil: true

        # @return [String, nil] The path to a local gem used as installation source.
        attribute :gem_source
        validates :gem_source, type: String

        # @return [:yes, :no, nil] Whether to include dependencies or not.
        attribute :include_dependencies
        validates :include_dependencies, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] The repository from which the gem will be installed
        attribute :repository

        # @return [String, nil] Install gem in user's local gems cache or for all users
        attribute :user_install
        validates :user_install, type: String

        # @return [Object, nil] Override the path to the gem executable
        attribute :executable

        # @return [String, nil] Rewrite the shebang line on installed scripts to use /usr/bin/env.
        attribute :env_shebang
        validates :env_shebang, type: String

        # @return [String, nil] Version of the gem to be installed/removed.
        attribute :version
        validates :version, type: String

        # @return [String, nil] Allow installation of pre-release versions of the gem.
        attribute :pre_release
        validates :pre_release, type: String

        # @return [String, nil] Install with or without docs.
        attribute :include_doc
        validates :include_doc, type: String

        # @return [Object, nil] Allow adding build flags for gem compilation
        attribute :build_flags
      end
    end
  end
end
