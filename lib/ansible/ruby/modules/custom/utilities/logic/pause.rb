# frozen_string_literal: true

# VALIDATED_CHECKSUM: WaJ22CPnF/LKe3asnez70grWnKeUYzcT7cP2ZcgHswo=

require 'ansible/ruby/modules/generated/utilities/logic/pause'

module Ansible
  module Ruby
    module Modules
      class Pause
        remove_existing_validations :seconds
        validates :seconds, type: Integer
      end
    end
  end
end
