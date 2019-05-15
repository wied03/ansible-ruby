# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about server instances from OpenStack.
      class Os_server_facts < Base
        # @return [String, nil] restrict results to servers with names or UUID matching this glob expression (e.g., <web*>).
        attribute :server
        validates :server, type: String

        # @return [String, nil] when true, return additional detail about servers at the expense of additional API calls.
        attribute :detailed
        validates :detailed, type: String

        # @return [Object, nil] Ignored. Present for backwards compatibility
        attribute :availability_zone
      end
    end
  end
end
