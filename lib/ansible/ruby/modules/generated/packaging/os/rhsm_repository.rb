# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage(Enable/Disable) RHSM repositories to the Red Hat Subscription Management entitlement platform using the C(subscription-manager) command.
      class Rhsm_repository < Base
        # @return [:present, :enabled, :absent, :disabled] If state is equal to present or disabled, indicates the desired repository state.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :enabled, :absent, :disabled], :message=>"%{value} needs to be :present, :enabled, :absent, :disabled"}

        # @return [String] The ID of repositories to enable.,To operate on several repositories this can accept a comma separated list or a YAML list.
        attribute :name
        validates :name, presence: true, type: String
      end
    end
  end
end
