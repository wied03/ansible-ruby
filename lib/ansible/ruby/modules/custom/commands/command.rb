# frozen_string_literal: true
# VALIDATED_CHECKSUM: +JAIZ+xtGz02CikxF1DO4uO1H0zmtSVKXxqQCtwJzz8=
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
