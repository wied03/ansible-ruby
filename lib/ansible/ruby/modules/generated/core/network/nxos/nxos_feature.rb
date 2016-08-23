# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Nxos_feature < Base
        # @return [String] Name of feature
        attribute :feature
        validates :feature, presence: true, type: String

        # @return [String] Desired state of the feature
        attribute :state
        validates :state, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true
      end
    end
  end
end
