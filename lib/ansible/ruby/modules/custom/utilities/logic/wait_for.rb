# frozen_string_literal: true
# VALIDATED_CHECKSUM: IniBE/dGvYB1H6Yz7JW1p52js4RVEIp0r+70AdvwegY=
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
