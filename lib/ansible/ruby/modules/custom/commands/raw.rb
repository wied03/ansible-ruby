# frozen_string_literal: true
# VALIDATED_CHECKSUM: PdssncwLm4TJbZDmM41yeCZc+OOGK/pDOtP20iII5m0=
# See LICENSE.txt for license

require 'ansible/ruby/modules/free_form'
require 'ansible/ruby/modules/generated/core/commands/raw'

module Ansible
  module Ruby
    module Modules
      class Raw
        include FreeForm
      end
    end
  end
end
