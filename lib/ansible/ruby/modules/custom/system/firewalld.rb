# frozen_string_literal: true

# VALIDATED_CHECKSUM: ip23tisTReUfc1MZGw0hNQOlLVxf90rfNQlHDz2ASSM=

# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/system/firewalld'

module Ansible
  module Ruby
    module Modules
      class Firewalld
        remove_existing_validations :permanent
        validates :permanent, inclusion: { in: [true, false], message: '%{value} needs to be true, false' }, allow_nil: true
      end
    end
  end
end
