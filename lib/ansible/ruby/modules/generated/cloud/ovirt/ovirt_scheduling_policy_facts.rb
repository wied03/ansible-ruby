# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about one or more oVirt scheduling policies.
      class Ovirt_scheduling_policy_facts < Base
        # @return [Object] ID of the scheduling policy.
        attribute :id
        validates :id, presence: true

        # @return [String, nil] Name of the scheduling policy, can be used as glob expression.
        attribute :name
        validates :name, type: String
      end
    end
  end
end
