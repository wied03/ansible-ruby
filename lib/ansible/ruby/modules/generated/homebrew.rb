# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Homebrew < Base
        # @return [String] name of package to install/remove
        attribute :name
        validates :name, type: String

        # @return [String] ':' separated list of paths to search for 'brew' executable. Since A package (I(formula) in homebrew parlance) location is prefixed relative to the actual path of I(brew) command, providing an alternative I(brew) path enables managing different set of packages in an alternative location in the system.
        attribute :path
        validates :path, type: String

        # @return [String] state of the package
        attribute :state
        validates :state, inclusion: {:in=>[:head, :latest, :present, :absent, :linked, :unlinked], :message=>"%{value} needs to be :head, :latest, :present, :absent, :linked, :unlinked"}, allow_nil: true

        # @return [String] update homebrew itself first
        attribute :update_homebrew
        validates :update_homebrew, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] upgrade all homebrew packages
        attribute :upgrade_all
        validates :upgrade_all, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Array<String>] options flags to install a package
        attribute :install_options, flat_array: true
        validates :install_options, type: TypeGeneric.new(String)
      end
    end
  end
end
