# frozen_string_literal: true
# VALIDATED_CHECKSUM: tZ15R2BGQO3EviBSLF1xgJwQq4lJ3IVQt62btjV7s00=
# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/core/files/copy'
require 'ansible/ruby/modules/missing_file_stuff'

module Ansible
  module Ruby
    module Modules
      class Copy
        include MissingFileStuff
      end
    end
  end
end
