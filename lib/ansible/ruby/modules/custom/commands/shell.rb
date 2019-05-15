# frozen_string_literal: true

# VALIDATED_CHECKSUM: ko4ailxvWz/5/r5LTUWYrCGQ0J0opoOvk9nBJFohzlA=
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
