# frozen_string_literal: true
# VALIDATED_CHECKSUM: 0FJH7AOuEka90psCwION23l7WASYrRYsNe+treZF1wQ=
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
