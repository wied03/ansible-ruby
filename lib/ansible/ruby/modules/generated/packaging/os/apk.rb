# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages I(apk) packages for Alpine Linux.
      class Apk < Base
        # @return [:yes, :no, nil] During upgrade, reset versioned world dependencies and change logic to prefer replacing or downgrading packages (instead of holding them) if the currently installed package is no longer available from any repository.
        attribute :available
        validates :available, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Array<String>, String, nil] A package name, like C(foo), or multiple packages, like C(foo, bar).
        attribute :name
        validates :name, type: TypeGeneric.new(String)

        # @return [String, nil] A package repository or multiple repositories. Unlike with the underlying apk command, this list will override the system repositories rather than supplement them.
        attribute :repository
        validates :repository, type: String

        # @return [:present, :absent, :latest, nil] Indicates the desired package(s) state.,C(present) ensures the package(s) is/are present.,C(absent) ensures the package(s) is/are absent.,C(latest) ensures the package(s) is/are present and the latest version(s).
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :latest], :message=>"%{value} needs to be :present, :absent, :latest"}, allow_nil: true

        # @return [:yes, :no, nil] Update repository indexes. Can be run with other steps or on it's own.
        attribute :update_cache
        validates :update_cache, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Upgrade all installed packages to their latest version.
        attribute :upgrade
        validates :upgrade, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
