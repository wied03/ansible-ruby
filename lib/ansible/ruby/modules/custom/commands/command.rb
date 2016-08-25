# See LICENSE.txt for license

# VALIDATED_CHECKSUM: JQvTPI3GbhVRRPRvDgbzLeeuYLABoDT7ogPPA2odrHs=

require 'ansible/ruby/modules/custom/free_form'
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
