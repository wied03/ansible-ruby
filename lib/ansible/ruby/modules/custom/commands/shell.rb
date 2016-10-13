# VALIDATED_CHECKSUM: bL1wWjIPPEipr7Ri9/KKydfJ3w5S0A1ezC2BTh9hc8I=
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
