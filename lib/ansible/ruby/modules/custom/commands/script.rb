# frozen_string_literal: true
# VALIDATED_CHECKSUM: w7CVlblEfVzRNfEnY9mviyLc0xffRwO7BFYtCGzdfzM=
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
