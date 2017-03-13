# frozen_string_literal: true
# VALIDATED_CHECKSUM: +1o7EYET93zbTe25avWU5gUfuBClMl8BTRogHYVoN+c=
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
