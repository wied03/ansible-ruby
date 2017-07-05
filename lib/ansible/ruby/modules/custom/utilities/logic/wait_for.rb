# frozen_string_literal: true
# VALIDATED_CHECKSUM: 8KxkY3s+CA8c0FwXPV/dVqkftm528JxC0P/7Y7DtEz8=
require 'ansible/ruby/modules/generated/utilities/logic/wait_for'

module Ansible
  module Ruby
    module Modules
      class Wait_for
        remove_existing_validations :port
        validates :port, type: Integer
      end
    end
  end
end
