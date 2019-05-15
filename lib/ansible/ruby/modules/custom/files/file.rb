# frozen_string_literal: true

# VALIDATED_CHECKSUM: xidVmwpknCs3pGOPQF2X8I1Xly+xVy83uvCKuA6cpeY=
# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/files/file'
require 'ansible/ruby/modules/helpers/file_attributes'

module Ansible
  module Ruby
    module Modules
      class File
        include Helpers::FileAttributes
      end
    end
  end
end
