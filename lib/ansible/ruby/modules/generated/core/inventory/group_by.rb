# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Group_by < Base
        # @return [String] The variables whose values will be used as groups
        attribute :key
        validates :key, presence: true, type: String
      end
    end
  end
end
