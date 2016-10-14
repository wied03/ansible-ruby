# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about server instances from OpenStack.
      class Os_server_facts < Base
        # @return [String, nil] restrict results to servers with names matching this glob expression (e.g., C<web*>).
        attribute :server
        validates :server, type: String

        # @return [Boolean, nil] when true, return additional detail about servers at the expense of additional API calls.
        attribute :detailed
        validates :detailed, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
