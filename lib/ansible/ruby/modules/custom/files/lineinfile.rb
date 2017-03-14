# frozen_string_literal: true
# VALIDATED_CHECKSUM: 9zZ/FjKOW9NNFmEW5P9igO9bLHW8KNw+8kZ9zNy8N6c=
# see LICENSE.txt in project root

require 'ansible/ruby/modules/generated/core/files/lineinfile'
require 'ansible/ruby/modules/helpers/file_attributes'

module Ansible
  module Ruby
    module Modules
      class Lineinfile
        attribute :validate
        validates :validate, type: String
      end
    end
  end
end
