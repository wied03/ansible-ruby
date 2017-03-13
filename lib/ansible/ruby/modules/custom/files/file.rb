# VALIDATED_CHECKSUM: tI1P4MoramJ/EVDfrtXKD3n833CNU/3s3r7MLwvdRWc=
# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/core/files/file'
require 'ansible/ruby/modules/missing_file_stuff'

module Ansible
  module Ruby
    module Modules
      class File
        include MissingFileStuff
      end
    end
  end
end
