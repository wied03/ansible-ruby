# frozen_string_literal: true

# VALIDATED_CHECKSUM: kU0Etc59leXMQ5F58pbdgEMIj8fDCzwFwPfBw1+Tp/Q=

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
