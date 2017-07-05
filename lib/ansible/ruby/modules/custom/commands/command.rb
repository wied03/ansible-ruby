# frozen_string_literal: true
# VALIDATED_CHECKSUM: If0PXp4vpUXNXws7PkQfDmqMELYAjTTmN+7xMTo32qQ=
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
