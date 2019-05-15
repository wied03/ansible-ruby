# frozen_string_literal: true

# VALIDATED_CHECKSUM: eNy9dt5MNTxeoSLUAttIX4/ZhU+wqY6uO5uPETNv3d4=
# see LICENSE.txt in project root

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
