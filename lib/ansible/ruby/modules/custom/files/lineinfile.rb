# frozen_string_literal: true

# VALIDATED_CHECKSUM: MUmYBWM0gOoYI/PKvp9gAffnBNMelLMAmgWuU2aUlqs=

# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/files/lineinfile'
require 'ansible/ruby/modules/helpers/file_attributes'

module Ansible
  module Ruby
    module Modules
      class Lineinfile
        include Helpers::FileAttributes
      end
    end
  end
end
