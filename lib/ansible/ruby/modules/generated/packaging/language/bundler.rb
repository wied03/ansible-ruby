# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage installation and Gem version dependencies for Ruby using the Bundler gem
      class Bundler < Base
        # @return [String, nil] The path to the bundler executable
        attribute :executable
        validates :executable, type: String

        # @return [:present, :latest, nil] The desired state of the Gem bundle. C(latest) updates gems to the most recent, acceptable version
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :latest], :message=>"%{value} needs to be :present, :latest"}, allow_nil: true

        # @return [String, nil] The directory to execute the bundler commands from. This directoy needs to contain a valid Gemfile or .bundle/ directory
        attribute :chdir
        validates :chdir, type: String

        # @return [String, nil] A list of Gemfile groups to exclude during operations. This only applies when state is C(present). Bundler considers this a 'remembered' property for the Gemfile and will automatically exclude groups in future operations even if C(exclude_groups) is not set
        attribute :exclude_groups
        validates :exclude_groups, type: String

        # @return [:yes, :no, nil] Only applies if state is C(present). If set removes any gems on the target host that are not in the gemfile
        attribute :clean
        validates :clean, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Only applies if state is C(present). The path to the gemfile to use to install gems.
        attribute :gemfile
        validates :gemfile, type: String

        # @return [:yes, :no, nil] If set only installs gems from the cache on the target host
        attribute :local
        validates :local, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Only applies if state is C(present). If set it will install gems in ./vendor/bundle instead of the default location. Requires a Gemfile.lock file to have been created prior
        attribute :deployment_mode
        validates :deployment_mode, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Only applies if state is C(present). Installs gems in the local user's cache or for all users
        attribute :user_install
        validates :user_install, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Only applies if state is C(present). Specifies the directory to install the gems into. If C(chdir) is set then this path is relative to C(chdir)
        attribute :gem_path
        validates :gem_path, type: String

        # @return [Object, nil] Only applies if state is C(present). Specifies the directory to install any gem bins files to. When executed the bin files will run within the context of the Gemfile and fail if any required gem dependencies are not installed. If C(chdir) is set then this path is relative to C(chdir)
        attribute :binstub_directory

        # @return [Object, nil] A space separated string of additional commands that can be applied to the Bundler command. Refer to the Bundler documentation for more information
        attribute :extra_args
      end
    end
  end
end
