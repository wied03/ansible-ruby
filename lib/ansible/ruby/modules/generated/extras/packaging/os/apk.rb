# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages I(apk) packages for Alpine Linux.
      class Apk < Base
        # @return [Array<String>, String, nil] A package name, like C(foo), or mutliple packages, like C(foo, bar).
        attribute :name
        validates :name, type: TypeGeneric.new(String)

        # @return [:present, :absent, :latest, nil] Indicates the desired package(s) state.,C(present) ensures the package(s) is/are present.,C(absent) ensures the package(s) is/are absent.,C(latest) ensures the package(s) is/are present and the latest version(s).
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :latest], :message=>"%{value} needs to be :present, :absent, :latest"}, allow_nil: true

        # @return [Boolean, nil] Update repository indexes. Can be run with other steps or on it's own.
        attribute :update_cache
        validates :update_cache, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Upgrade all installed packages to their latest version.
        attribute :upgrade
        validates :upgrade, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
