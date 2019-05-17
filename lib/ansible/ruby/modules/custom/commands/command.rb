# frozen_string_literal: true
# VALIDATED_CHECKSUM: S9uYPfz/D7VTlg9scDoKh0Ea/IqcNd/u9qtU4St7aOg=

# See LICENSE.txt for license

require 'ansible/ruby/modules/free_form'
require 'ansible/ruby/modules/generated/commands/command'

module Ansible
  module Ruby
    module Modules
      class Command
        include FreeForm
      end
    end
  end
end
