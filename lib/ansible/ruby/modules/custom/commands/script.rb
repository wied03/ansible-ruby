# VALIDATED_CHECKSUM: 9JallgUysKJIyHfAPqGtC5OEbyuq4elfgTdiAnipb3M=
# See LICENSE.txt for license

require 'ansible/ruby/modules/free_form'
require 'ansible/ruby/modules/generated/core/commands/script'

module Ansible
  module Ruby
    module Modules
      class Script
        include FreeForm
      end
    end
  end
end
