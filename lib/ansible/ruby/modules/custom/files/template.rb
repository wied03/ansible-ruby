# frozen_string_literal: true
# VALIDATED_CHECKSUM: b61qLsxAXMFl83y/AepYYDFqOkdjndUcCUkJ6Lv+TFg=
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
