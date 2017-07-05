# frozen_string_literal: true
# VALIDATED_CHECKSUM: kCwkdKkY3hHURoTxOU60KC5tk3ck3veDWbRv54LDE18=
require 'ansible/ruby/modules/generated/core/utilities/logic/pause'

module Ansible
  module Ruby
    module Modules
      class Pause
        remove_existing_validations :minutes
        validates :minutes, type: Integer
        remove_existing_validations :seconds
        validates :seconds, type: Integer
      end
    end
  end
end
