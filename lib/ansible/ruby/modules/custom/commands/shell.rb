# frozen_string_literal: true
# VALIDATED_CHECKSUM: cUM5pwc5w01/hfwe8nfTbL3IvwoqvV7tJou9fwLq6js=
# See LICENSE.txt for license

require 'ansible/ruby/modules/free_form'
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
