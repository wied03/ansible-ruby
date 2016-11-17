# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage the atomic host platform
      # Rebooting of Atomic host platform should be done outside this module
      class Atomic_host < Base
        # @return [String, nil] The version number of the atomic host to be deployed. Providing ```latest``` will upgrade to the latest available version.
        attribute :revision
        validates :revision, type: String
      end
    end
  end
end
