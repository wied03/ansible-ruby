# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage node.js packages with Node Package Manager (npm)
      class Npm < Base
        # @return [String, nil] The name of a node.js library to install
        attribute :name
        validates :name, type: String

        # @return [String, nil] The base path where to install the node.js libraries
        attribute :path
        validates :path, type: String

        # @return [String, nil] The version to be installed
        attribute :version
        validates :version, type: String

        # @return [Boolean, nil] Install the node.js library globally
        attribute :global
        validates :global, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The executable location for npm.,This is useful if you are using a version manager, such as nvm
        attribute :executable
        validates :executable, type: String

        # @return [Boolean, nil] Use the C(--ignore-scripts) flag when installing.
        attribute :ignore_scripts
        validates :ignore_scripts, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Install dependencies in production mode, excluding devDependencies
        attribute :production
        validates :production, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The registry to install modules from.
        attribute :registry
        validates :registry, type: String

        # @return [:present, :absent, :latest, nil] The state of the node.js library
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :latest], :message=>"%{value} needs to be :present, :absent, :latest"}, allow_nil: true
      end
    end
  end
end
