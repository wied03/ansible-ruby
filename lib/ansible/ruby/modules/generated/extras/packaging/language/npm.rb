# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Npm < Base
        # @return [String] The name of a node.js library to install
        attribute :name
        validates :name, type: String

        # @return [String] The base path where to install the node.js libraries
        attribute :path
        validates :path, type: String

        # @return [String] The version to be installed
        attribute :version
        validates :version, type: String

        # @return [String] Install the node.js library globally
        attribute :global
        validates :global, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] The executable location for npm.,This is useful if you are using a version manager, such as nvm
        attribute :executable
        validates :executable, type: String

        # @return [Object] Use the --ignore-scripts flag when installing.
        attribute :ignore_scripts
        validates :ignore_scripts, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] Install dependencies in production mode, excluding devDependencies
        attribute :production
        validates :production, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] The registry to install modules from.
        attribute :registry
        validates :registry, type: String

        # @return [String] The state of the node.js library
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :latest], :message=>"%{value} needs to be :present, :absent, :latest"}, allow_nil: true
      end
    end
  end
end