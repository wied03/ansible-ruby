# frozen_string_literal: true

# VALIDATED_CHECKSUM: 2NwxN/FxvzHOUj8TDmDV7STdEo+dSSTCUEBPVOtFY0Q=
# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/files/unarchive'
require 'ansible/ruby/modules/helpers/file_attributes'

module Ansible
  module Ruby
    module Modules
      class Unarchive
        include Helpers::FileAttributes
      end
    end
  end
end
