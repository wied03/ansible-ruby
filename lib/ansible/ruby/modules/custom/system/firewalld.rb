# frozen_string_literal: true

# VALIDATED_CHECKSUM: 2Xw3BWuyYAdBR5uBu3zJMb/O3rosKreeI2Cpo0B0ul8=

# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/system/firewalld'

module Ansible
  module Ruby
    module Modules
      class Firewalld
        remove_existing_validations :permanent
        validates :permanent, expression_inclusion: { in: [true, false], message: '%{value} needs to be true, false' }, allow_nil: true
      end
    end
  end
end
