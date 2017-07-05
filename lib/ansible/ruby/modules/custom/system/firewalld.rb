# frozen_string_literal: true
# VALIDATED_CHECKSUM: ZmZ71tAPirypEDqr9qtRVynamdz9SxAv3bOyNlQQJMc=
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
