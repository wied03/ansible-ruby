# frozen_string_literal: true

# VALIDATED_CHECKSUM: wEhr1Qmn3zp1g3c/T5S2CNpJkLWEZM4S/ppfOtqQDQ0=

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
