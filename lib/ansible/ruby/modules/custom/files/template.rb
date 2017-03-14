# frozen_string_literal: true
# VALIDATED_CHECKSUM: b61qLsxAXMFl83y/AepYYDFqOkdjndUcCUkJ6Lv+TFg=
# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/core/files/template'
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
