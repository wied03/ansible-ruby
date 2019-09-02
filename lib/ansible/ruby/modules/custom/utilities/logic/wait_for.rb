# frozen_string_literal: true

# VALIDATED_CHECKSUM: FNDV+m2tnS3VzvDOwCruOZV1Z7svZwX3snhH4Zf2l4U=

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
