# frozen_string_literal: true
# VALIDATED_CHECKSUM: rQYGJmNSbtiLlN+vntnz3SEl3YYK2k2uqMZq7VRYiHI=
# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/core/files/fetch'

module Ansible
  module Ruby
    module Modules
      class Fetch
        remove_existing_validations :flat
        validates :flat, inclusion: { in: [:yes, :no], message: '%{value} needs to be :yes, :no' }, allow_nil: true
      end
    end
  end
end
