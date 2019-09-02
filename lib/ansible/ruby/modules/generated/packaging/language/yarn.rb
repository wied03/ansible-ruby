# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage node.js packages with the Yarn package manager (https://yarnpkg.com/)
      class Yarn < Base
        # @return [String, nil] The name of a node.js library to install,If omitted all packages in package.json are installed.
        attribute :name
        validates :name, type: String

        # @return [String, nil] The base path where Node.js libraries will be installed.,This is where the node_modules folder lives.
        attribute :path
        validates :path, type: String

        # @return [String, nil] The version of the library to be installed.,Must be in semver format. If "latest" is desired, use "state" arg instead
        attribute :version
        validates :version, type: String

        # @return [Symbol, nil] Install the node.js library globally
        attribute :global
        validates :global, type: Symbol

        # @return [Object, nil] The executable location for yarn.
        attribute :executable

        # @return [Symbol, nil] Use the --ignore-scripts flag when installing.
        attribute :ignore_scripts
        validates :ignore_scripts, type: Symbol

        # @return [Symbol, nil] Install dependencies in production mode.,Yarn will ignore any dependencies under devDependencies in package.json
        attribute :production
        validates :production, type: Symbol

        # @return [String, nil] The registry to install modules from.
        attribute :registry
        validates :registry, type: String

        # @return [:present, :absent, :latest, nil] Installation state of the named node.js library,If absent is selected, a name option must be provided
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :latest], :message=>"%{value} needs to be :present, :absent, :latest"}, allow_nil: true
      end
    end
  end
end
