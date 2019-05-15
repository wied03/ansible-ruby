# frozen_string_literal: true
# VALIDATED_CHECKSUM: wsS2vEcWFZ6HGhxV7bUg2tOa1hSm/Ondthcu+SQbkDs=
# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/files/copy'
require 'ansible/ruby/modules/helpers/file_attributes'

module Ansible
  module Ruby
    module Modules
      class Copy
        include Helpers::FileAttributes
      end
    end
  end
end
