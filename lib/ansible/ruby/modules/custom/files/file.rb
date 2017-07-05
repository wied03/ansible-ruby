# frozen_string_literal: true
# VALIDATED_CHECKSUM: K2EmHL41WEqtEK5ag3oUQUPuawKxFPVikUuVts/m+U8=
# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/core/files/file'
require 'ansible/ruby/modules/helpers/file_attributes'

module Ansible
  module Ruby
    module Modules
      class File
        include Helpers::FileAttributes
      end
    end
  end
end
