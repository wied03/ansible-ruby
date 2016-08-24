# VALIDATED_CHECKSUM: aHiGPJ0CGZvoBX3EPdvSwymkBZ1qlHyXEBrLfi27C6A=
# See LICENSE.txt for license

require 'ansible/ruby/modules/custom/free_form'
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
