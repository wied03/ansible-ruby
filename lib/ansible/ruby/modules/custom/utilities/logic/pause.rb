# frozen_string_literal: true

# VALIDATED_CHECKSUM: tWBo+YFRcbSrlJFU2zDvn6pqnYqovx+p3d0iD7j+nt4=
require 'ansible/ruby/modules/generated/utilities/logic/pause'

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
