# frozen_string_literal: true
# VALIDATED_CHECKSUM: wd5+HMdISVNto3caoa5jHoqmSk68NzhJSuFmYPENs9M=

# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/files/template'
require 'ansible/ruby/modules/helpers/file_attributes'

module Ansible
  module Ruby
    module Modules
      class Template
        include Helpers::FileAttributes
      end
    end
  end
end
