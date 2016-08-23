# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Os_image_facts < Base
        # @return [String] Name or ID of the image
        attribute :image
        validates :image, presence: true, type: String
      end
    end
  end
end
