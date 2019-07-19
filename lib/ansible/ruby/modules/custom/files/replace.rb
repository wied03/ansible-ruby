# frozen_string_literal: true

# VALIDATED_CHECKSUM: 8tGO4W1AOIcyDgnmv++QyJ4bwnzbhVmIPO4QPdR0bKs=

# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/files/replace'
require 'ansible/ruby/modules/helpers/file_attributes'

module Ansible
  module Ruby
    module Modules
      class Replace
        include Helpers::FileAttributes
      end
    end
  end
end
