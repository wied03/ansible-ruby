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

        # @return [:present, :absent, nil] state of the cask
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] update homebrew itself first. Note that C(brew cask update) is a synonym for C(brew update).
        attribute :update_homebrew
        validates :update_homebrew, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Array<String>, String, nil] options flags to install a package
        attribute :install_options
        validates :install_options, type: TypeGeneric.new(String)
      end
    end
  end
end
