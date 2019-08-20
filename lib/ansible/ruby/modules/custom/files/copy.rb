# frozen_string_literal: true

# VALIDATED_CHECKSUM: hTBMwMt7e0LEFEVeg20SvvmNePzOg5fDDjWjJDcx+hw=

# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/files/copy'
require 'ansible/ruby/modules/helpers/file_attributes'

module Ansible
  module Ruby
    module Modules
      class Copy
        remove_existing_validations :mode
        include Helpers::FileAttributes
      end
    end
  end
end
