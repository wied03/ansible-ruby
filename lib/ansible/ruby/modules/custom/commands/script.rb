# VALIDATED_CHECKSUM: RhHDiVtIFNT3I5ESwjmmuJBl8pv6qi2oIyGxPsjxmpE=
# See LICENSE.txt for license

require 'ansible/ruby/modules/custom/free_form'
require 'ansible/ruby/modules/generated/core/commands/script'

module Ansible
  module Ruby
    module Modules
      class Script
        include FreeForm
      end
    end
  end
end
