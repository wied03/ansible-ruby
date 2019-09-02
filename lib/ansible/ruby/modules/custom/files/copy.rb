# frozen_string_literal: true

# VALIDATED_CHECKSUM: L5A1FluCE5GCjHh2FWbb3wQ/ib7zSYoD5K4gPHTDXUE=

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
