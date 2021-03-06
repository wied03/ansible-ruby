# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Provide one or more image names, and the module will inspect each, returning an array of inspection results.
      class Docker_image_facts < Base
        # @return [Array<String>, String] An image name or a list of image names. Name format will be name[:tag] or repository/name[:tag], where tag is optional. If a tag is not provided, 'latest' will be used.
        attribute :name
        validates :name, presence: true, type: TypeGeneric.new(String)
      end
    end
  end
end
