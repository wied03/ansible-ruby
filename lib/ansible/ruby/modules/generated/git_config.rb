# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Git_config < Base
        # @return [String] List all settings (optionally limited to a given I(scope))
        attribute :list_all
        validates :list_all, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] The name of the setting. If no value is supplied, the value will be read from the config if it has been set.
        attribute :name
        validates :name, type: String

        # @return [String] Path to a git repository for reading and writing values from a specific repo.
        attribute :repo
        validates :repo, type: String

        # @return [String] Specify which scope to read/set values from. This is required when setting config values. If this is set to local, you must also specify the repo parameter. It defaults to system only when not using I(list_all)=yes.
        attribute :scope
        validates :scope, inclusion: {:in=>[:local, :global, :system], :message=>"%{value} needs to be :local, :global, :system"}, allow_nil: true

        # @return [String] When specifying the name of a single setting, supply a value to set that setting to the given value.
        attribute :value
        validates :value, type: String
      end
    end
  end
end
