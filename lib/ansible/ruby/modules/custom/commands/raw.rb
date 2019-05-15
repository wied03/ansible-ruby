# frozen_string_literal: true

# VALIDATED_CHECKSUM: z5clqX2YhgpxWUV4gzTzqCvTZgjlIrUje9KFJTYgHX4=
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
