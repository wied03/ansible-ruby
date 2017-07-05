# frozen_string_literal: true
# VALIDATED_CHECKSUM: afEES2BGIfkPNw3UGZJliWFPYyeC/43pcKJ27cDQfec=
# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/files/fetch'

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
