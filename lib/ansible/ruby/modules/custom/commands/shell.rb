# VALIDATED_CHECKSUM: hbLqxsuZqxyO5SXR1JlPnhnNc6lrDZBDWwhN+7UNW7Q=
# See LICENSE.txt for license

require 'ansible/ruby/modules/custom/free_form'
require 'ansible/ruby/modules/generated/core/commands/shell'

module Ansible
  module Ruby
    module Modules
      class Shell
        include FreeForm
      end
    end
  end
end
