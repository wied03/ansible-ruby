# frozen_string_literal: true
# VALIDATED_CHECKSUM: y2/UqoYv1HqYSOyjAuwK01PD2tX1mG8ZVgS8kXrg7/o=
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
