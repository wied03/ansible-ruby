# frozen_string_literal: true

# VALIDATED_CHECKSUM: FxhniNgW1GXxUXF6XTrMY60VgePavi9dDL58W3CF8Tw=

require 'ansible/ruby/modules/generated/net_tools/basics/uri'

module Ansible
  module Ruby
    module Modules
      class Uri
        remove_existing_validations :body
        # Only picked up a single Integer in the generated class
        remove_existing_validations :status_code
        validates :status_code, type: TypeGeneric.new(Integer)
      end
    end
  end
end
