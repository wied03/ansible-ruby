# frozen_string_literal: true
# VALIDATED_CHECKSUM: +69Md2TK6h84rh43NMos9dH3iHPxq41FFdR8fehGJiY=
# See LICENSE.txt for license

require 'ansible/ruby/modules/free_form'
require 'ansible/ruby/modules/generated/commands/raw'

module Ansible
  module Ruby
    module Modules
      class Raw
        include FreeForm
      end
    end
  end
end
