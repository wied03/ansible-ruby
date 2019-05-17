# frozen_string_literal: true
# VALIDATED_CHECKSUM: Olbbhet6qROnBNER7+f5K4P3NJQI1eaGx1X/GnjFhoQ=

# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/files/unarchive'
require 'ansible/ruby/modules/helpers/file_attributes'

module Ansible
  module Ruby
    module Modules
      class Unarchive
        include Helpers::FileAttributes
      end
    end
  end
end
