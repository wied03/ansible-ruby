# VALIDATED_CHECKSUM: btGcDE59YLyMKJs2cIrGEUILUgFMG3ChnfFburRtSYg=
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
