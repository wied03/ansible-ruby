# frozen_string_literal: true

# VALIDATED_CHECKSUM: fdDrO/oHp6poiRSStOy3S3Eq4brp7li3fUuGOFOvJcg=

# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/files/lineinfile'
require 'ansible/ruby/modules/helpers/file_attributes'

module Ansible
  module Ruby
    module Modules
      class Lineinfile
        include Helpers::FileAttributes
      end
    end
  end
end
