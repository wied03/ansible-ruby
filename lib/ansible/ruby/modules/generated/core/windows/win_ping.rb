# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_ping < Base
        # @return [String, nil] Alternate data to return instead of 'pong'
        attribute :data
        validates :data, type: String
      end
    end
  end
end
