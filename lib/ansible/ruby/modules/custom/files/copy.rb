# VALIDATED_CHECKSUM: xP6DW+ebKQO0s/qZz8E8aOeRWZtmT6jaPtrvAtsQwyU=
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
