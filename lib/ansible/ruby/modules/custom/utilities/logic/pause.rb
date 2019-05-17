# frozen_string_literal: true
# VALIDATED_CHECKSUM: qo/1wpiygXQmrbXfJwu1G8B1/wdoGpKKXRuRJRbMq5A=

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
