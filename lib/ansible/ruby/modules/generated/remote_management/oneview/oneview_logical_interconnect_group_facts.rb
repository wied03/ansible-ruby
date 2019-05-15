# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about one or more of the Logical Interconnect Groups from OneView
      class Oneview_logical_interconnect_group_facts < Base
        # @return [String, nil] Logical Interconnect Group name.
        attribute :name
        validates :name, type: String
      end
    end
  end
end
