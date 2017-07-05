# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about a image image from OpenStack.
      class Os_image_facts < Base
        # @return [String] Name or ID of the image
        attribute :image
        validates :image, presence: true, type: String

        # @return [Object, nil] Ignored. Present for backwards compatability
        attribute :availability_zone
      end
    end
  end
end