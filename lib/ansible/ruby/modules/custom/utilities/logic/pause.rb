# frozen_string_literal: true
# VALIDATED_CHECKSUM: +7Kl3P/74NokR1r+LreDc2v2yBNNC4UKveTkNNv/Xbk=
require 'ansible/ruby/modules/generated/core/utilities/logic/pause'

module Ansible
  module Ruby
    module Modules
      class Pause
        remove_existing_validations :minutes
        validates :minutes, type: Fixnum
        remove_existing_validations :seconds
        validates :seconds, type: Fixnum
      end
    end
  end
end
