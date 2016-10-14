# VALIDATED_CHECKSUM: uKMw8+w4NpzVQ2lgEzhz4oIL+HNRv+7w4fIDdY4IOc0=
# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/core/files/template'
require 'ansible/ruby/modules/missing_file_stuff'

module Ansible
  module Ruby
    module Modules
      class Template
        include MissingFileStuff
      end
    end
  end
end
