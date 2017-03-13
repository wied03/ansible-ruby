# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Offers ability to enable and disable features in NX-OS.
      class Nxos_feature < Base
        # @return [String] Name of feature.
        attribute :feature
        validates :feature, presence: true, type: String

        # @return [:enabled, :disabled, nil] Desired state of the feature.
        attribute :state
        validates :state, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true
      end
    end
  end
end
