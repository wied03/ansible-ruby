# frozen_string_literal: true

# VALIDATED_CHECKSUM: akAVXAlaPNtfb0X9tXCzclGwvmnUxsycQ1rTm0Rc+Mo=

require 'ansible/ruby/modules/generated/packaging/os/yum_repository'

module Ansible
  module Ruby
    module Modules
      class Yum_repository
        remove_existing_validations :description
        # Description is required, it will fail without it
        validates :description, type: String, presence: true
      end
    end
  end
end
