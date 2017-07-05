# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Sets machine time to the specified timezone, the module will check if the provided timezone is supported on the machine.
      class Win_timezone < Base
        # @return [Object] Timezone to set to.  Example Central Standard Time
        attribute :timezone
        validates :timezone, presence: true
      end
    end
  end
end