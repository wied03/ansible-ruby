# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage binary packages for Slackware using 'slackpkg' which is available in versions after 12.2.
      class Slackpkg < Base
        # @return [Array<String>, String] name of package to install/remove
        attribute :name
        validates :name, presence: true, type: TypeGeneric.new(String)

        # @return [:present, :absent, :latest, nil] state of the package, you can use "installed" as an alias for C(present) and removed as one for C(absent).
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :latest], :message=>"%{value} needs to be :present, :absent, :latest"}, allow_nil: true

        # @return [Symbol, nil] update the package database first
        attribute :update_cache
        validates :update_cache, type: Symbol
      end
    end
  end
end
