# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Os_server_facts < Base
        # @return [String] restrict results to servers with names matching this glob expression (e.g., C<web*>).
        attribute :server
        validates :server, type: String

        # @return [Object] when true, return additional detail about servers at the expense of additional API calls.
        attribute :detailed
      end
    end
  end
end
