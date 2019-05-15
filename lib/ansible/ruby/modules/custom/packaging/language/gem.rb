# frozen_string_literal: true

# VALIDATED_CHECKSUM: yIM7LRTEWh6KlY0HRJUQTZdAjJPjV3OdbrteoskNuis=
# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/packaging/language/gem'

module Ansible
  module Ruby
    module Modules
      class Gem
        remove_existing_validations :user_install
        validates :user_install, inclusion: { in: %i[yes no], message: '%{value} needs to be :yes, :no' }, allow_nil: true
      end
    end
  end
end
