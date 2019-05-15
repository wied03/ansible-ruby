# frozen_string_literal: true

# VALIDATED_CHECKSUM: 9b3Wf5xII4mWpSZBl56dcFHM9sLHcRenDc0U8YCvuRs=
# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/files/fetch'

module Ansible
  module Ruby
    module Modules
      class Fetch
        remove_existing_validations :flat
        validates :flat, inclusion: { in: %i[yes no], message: '%{value} needs to be :yes, :no' }, allow_nil: true
      end
    end
  end
end
