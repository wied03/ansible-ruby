# frozen_string_literal: true
# VALIDATED_CHECKSUM: ZWwcmlU7GRwuDEjYe/Hy3y+EGnR7R8IcDU7mITuM12M=
# See LICENSE.txt for license

require 'ansible/ruby/modules/free_form'
require 'ansible/ruby/modules/generated/commands/script'

module Ansible
  module Ruby
    module Modules
      class Script
        include FreeForm
      end
    end
  end
end
