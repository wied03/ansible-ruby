# frozen_string_literal: true

# VALIDATED_CHECKSUM: joWp3ZYxGmVxwPkHwt/+g+Yloq9F0rXjFxjU2UOeLA8=

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
