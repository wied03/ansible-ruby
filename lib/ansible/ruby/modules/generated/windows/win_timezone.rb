# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Sets machine time to the specified timezone.
      class Win_timezone < Base
        # @return [String] Timezone to set to.,Example: Central Standard Time
        attribute :timezone
        validates :timezone, presence: true, type: String
      end
    end
  end
end
