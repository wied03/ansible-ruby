# VALIDATED_CHECKSUM: HlJ7AWUxwcrY8Vt+1L/V59AdmCQdJO3Ts8bbemlo4eY=
# See LICENSE.txt for license

require 'ansible/ruby/modules/free_form'
require 'ansible/ruby/modules/generated/core/commands/command'

module Ansible
  module Ruby
    module Modules
      class Command
        include FreeForm
      end
    end
  end
end
