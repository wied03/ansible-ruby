# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage packages with the XBPS package manager.
      class Xbps < Base
        # @return [Array<String>, String, nil] Name of the package to install, upgrade, or remove.
        attribute :name
        validates :name, type: TypeGeneric.new(String)

        # @return [:present, :absent, :latest, nil] Desired state of the package.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :latest], :message=>"%{value} needs to be :present, :absent, :latest"}, allow_nil: true

        # @return [:yes, :no, nil] When removing a package, also remove its dependencies, provided that they are not required by other packages and were not explicitly installed by a user.
        attribute :recurse
        validates :recurse, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Whether or not to refresh the master package lists. This can be run as part of a package installation or as a separate step.
        attribute :update_cache
        validates :update_cache, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Whether or not to upgrade whole system
        attribute :upgrade
        validates :upgrade, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
