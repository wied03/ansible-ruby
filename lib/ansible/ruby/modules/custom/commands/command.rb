# frozen_string_literal: true

# VALIDATED_CHECKSUM: bgYpmlgHHwir0nbxTr9jiOjGnTv/CI1XdBL3X/PJaak=

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
