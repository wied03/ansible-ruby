# VALIDATED_CHECKSUM: AdFa02QGpVTJzxok0diPJdAEUBApm3x9juB4vVByHyY=
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
