# VALIDATED_CHECKSUM: mjNTv7oVq/5TaG0rd1HKCgqJ+tQfRQEMbppWPADoxeg=
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
