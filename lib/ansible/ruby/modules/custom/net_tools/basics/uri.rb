# frozen_string_literal: true

# VALIDATED_CHECKSUM: ufX7Ba5/x3f/CI3oBpj+dVFvc+4g69AAPG2ZX6Yk3KM=

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
