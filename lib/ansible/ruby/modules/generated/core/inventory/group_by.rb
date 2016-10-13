# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Use facts to create ad-hoc groups that can be used later in a playbook.
      class Group_by < Base
        # @return [String] The variables whose values will be used as groups
        attribute :key
        validates :key, presence: true, type: String
      end
    end
  end
end
