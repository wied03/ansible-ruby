# frozen_string_literal: true
# VALIDATED_CHECKSUM: F4JnYP5F2qIy8hK5OLXbJuz+R3eVhiuSQs82dhWZN+k=
# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/files/template'
require 'ansible/ruby/modules/helpers/file_attributes'

module Ansible
  module Ruby
    module Modules
      class Template
        include Helpers::FileAttributes
      end
    end
  end
end
