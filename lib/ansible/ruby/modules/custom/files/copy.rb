# frozen_string_literal: true
# VALIDATED_CHECKSUM: tZ15R2BGQO3EviBSLF1xgJwQq4lJ3IVQt62btjV7s00=
# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/core/files/copy'
require 'ansible/ruby/modules/helpers/file_attributes'

module Ansible
  module Ruby
    module Modules
      class Copy
        include Helpers::FileAttributes
      end
    end
  end
end
