# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Use facts to create ad-hoc groups that can be used later in a playbook.
      # This module is also supported for Windows targets.
      class Group_by < Base
        # @return [String] The variables whose values will be used as groups
        attribute :key
        validates :key, presence: true, type: String

        # @return [String, nil] The list of the parent groups
        attribute :parents
        validates :parents, type: String
      end
    end
  end
end
