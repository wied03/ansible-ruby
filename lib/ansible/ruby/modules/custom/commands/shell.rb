# frozen_string_literal: true
# VALIDATED_CHECKSUM: OX/3jV11XiTvfEQ2c3H7uBuwsz9cDw1BHAgg4Q7AZlI=

# See LICENSE.txt for license

require 'ansible/ruby/modules/free_form'
require 'ansible/ruby/modules/generated/commands/shell'

module Ansible
  module Ruby
    module Modules
      class Shell
        include FreeForm
      end
    end
  end
end
