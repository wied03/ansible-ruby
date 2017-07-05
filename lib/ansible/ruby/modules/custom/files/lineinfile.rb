# frozen_string_literal: true
# VALIDATED_CHECKSUM: WXg/ySKZ0hBn1/PEm+HCrLhJMWDIsePlAjMKt2bkVpw=
# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/core/files/lineinfile'
require 'ansible/ruby/modules/helpers/file_attributes'

module Ansible
  module Ruby
    module Modules
      class Lineinfile
        attribute :validate
        validates :validate, type: String
      end
    end
  end
end
