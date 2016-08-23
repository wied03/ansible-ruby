# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Slackpkg < Base
        # @return [String] name of package to install/remove
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, :latest, nil] state of the package, you can use "installed" as an alias for C(present) and removed as one for c(absent).
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :latest], :message=>"%{value} needs to be :present, :absent, :latest"}, allow_nil: true

        # @return [Boolean, nil] update the package database first
        attribute :update_cache
        validates :update_cache, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
