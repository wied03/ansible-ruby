# frozen_string_literal: true

# VALIDATED_CHECKSUM: 2J8J2aJcLDah8QQTQLDnx60SvmWPh66lT75G7niNpm0=

# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/files/file'
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
