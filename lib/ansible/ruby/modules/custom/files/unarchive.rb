# frozen_string_literal: true
# VALIDATED_CHECKSUM: DomrKrMMfhXNXOCs8gbgv/npDHeKn5t++LitWRHyXdA=
# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/core/files/unarchive'
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
