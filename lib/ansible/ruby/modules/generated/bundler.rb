# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Bundler < Base
        # @return [String] The path to the bundler executable
        attribute :executable
        validates :executable, type: String

        # @return [String] The desired state of the Gem bundle. C(latest) updates gems to the most recent, acceptable version
        attribute :state
        validates :state, inclusion: {:in=>[:present, :latest], :message=>"%{value} needs to be :present, :latest"}, allow_nil: true

        # @return [String] The directory to execute the bundler commands from. This directoy needs to contain a valid Gemfile or .bundle/ directory
        attribute :chdir
        validates :chdir, type: String

        # @return [String] A list of Gemfile groups to exclude during operations. This only applies when state is C(present). Bundler considers this a 'remembered' property for the Gemfile and will automatically exclude groups in future operations even if C(exclude_groups) is not set
        attribute :exclude_groups
        validates :exclude_groups, type: String

        # @return [String] Only applies if state is C(present). If set removes any gems on the target host that are not in the gemfile
        attribute :clean
        validates :clean, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] Only applies if state is C(present). The path to the gemfile to use to install gems.
        attribute :gemfile
        validates :gemfile, type: String

        # @return [String] If set only installs gems from the cache on the target host
        attribute :local
        validates :local, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] Only applies if state is C(present). If set it will only install gems that are in the default or production groups. Requires a Gemfile.lock file to have been created prior
        attribute :deployment_mode
        validates :deployment_mode, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] Only applies if state is C(present). Installs gems in the local user's cache or for all users
        attribute :user_install
        validates :user_install, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] Only applies if state is C(present). Specifies the directory to install the gems into. If C(chdir) is set then this path is relative to C(chdir)
        attribute :gem_path
        validates :gem_path, type: String

        # @return [Object] Only applies if state is C(present). Specifies the directory to install any gem bins files to. When executed the bin files will run within the context of the Gemfile and fail if any required gem dependencies are not installed. If C(chdir) is set then this path is relative to C(chdir)
        attribute :binstub_directory

        # @return [Object] A space separated string of additional commands that can be applied to the Bundler command. Refer to the Bundler documentation for more information
        attribute :extra_args
      end
    end
  end
end
