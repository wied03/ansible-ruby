# frozen_string_literal: true

# VALIDATED_CHECKSUM: Y5k5kRNhmLW2sw11h4w0+z33tsgENS/mFz4+H1I0N38=

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
