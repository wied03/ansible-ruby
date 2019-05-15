# frozen_string_literal: true
# VALIDATED_CHECKSUM: 7xG8FK2+LyCSviFhSMMarZshnWdQ/FipZRLvXbtOJhc=
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
