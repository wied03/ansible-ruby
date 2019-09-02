# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages Homebrew packages
      class Homebrew < Base
        # @return [Array<String>, String, nil] list of names of packages to install/remove
        attribute :name
        validates :name, type: TypeGeneric.new(String)

        # @return [String, nil] A ':' separated list of paths to search for 'brew' executable. Since a package (I(formula) in homebrew parlance) location is prefixed relative to the actual path of I(brew) command, providing an alternative I(brew) path enables managing different set of packages in an alternative location in the system.
        attribute :path
        validates :path, type: String

        # @return [:head, :latest, :present, :absent, :linked, :unlinked, nil] state of the package
        attribute :state
        validates :state, expression_inclusion: {:in=>[:head, :latest, :present, :absent, :linked, :unlinked], :message=>"%{value} needs to be :head, :latest, :present, :absent, :linked, :unlinked"}, allow_nil: true

        # @return [:yes, :no, nil] update homebrew itself first
        attribute :update_homebrew
        validates :update_homebrew, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] upgrade all homebrew packages
        attribute :upgrade_all
        validates :upgrade_all, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Array<String>, String, nil] options flags to install a package
        attribute :install_options
        validates :install_options, type: TypeGeneric.new(String)
      end
    end
  end
end
