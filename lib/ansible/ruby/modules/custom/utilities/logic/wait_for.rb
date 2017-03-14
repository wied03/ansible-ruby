# frozen_string_literal: true
# VALIDATED_CHECKSUM: Y24/Z6RmgYm+VkLGY6LlIBSs3THEhOqq5iMGFBKLwV4=
require 'ansible/ruby/modules/generated/core/utilities/logic/wait_for'

module Ansible
  module Ruby
    module Modules
      class Wait_for
        remove_existing_validations :port
        validates :port, type: Fixnum
      end
    end
  end
end
