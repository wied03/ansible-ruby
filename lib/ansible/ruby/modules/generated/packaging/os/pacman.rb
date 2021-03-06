# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage packages with the I(pacman) package manager, which is used by Arch Linux and its variants.
      class Pacman < Base
        # @return [Array<String>, String, nil] Name or list of names of the packages to install, upgrade, or remove.
        attribute :name
        validates :name, type: TypeGeneric.new(String)

        # @return [:absent, :latest, :present, nil] Desired state of the package.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :latest, :present], :message=>"%{value} needs to be :absent, :latest, :present"}, allow_nil: true

        # @return [Symbol, nil] When removing a package, also remove its dependencies, provided that they are not required by other packages and were not explicitly installed by a user.
        attribute :recurse
        validates :recurse, type: Symbol

        # @return [Symbol, nil] When removing package - force remove package, without any checks. When update_cache - force redownload repo databases.
        attribute :force
        validates :force, type: Symbol

        # @return [Symbol, nil] Whether or not to refresh the master package lists. This can be run as part of a package installation or as a separate step.
        attribute :update_cache
        validates :update_cache, type: Symbol

        # @return [Symbol, nil] Whether or not to upgrade whole system.
        attribute :upgrade
        validates :upgrade, type: Symbol
      end
    end
  end
end
