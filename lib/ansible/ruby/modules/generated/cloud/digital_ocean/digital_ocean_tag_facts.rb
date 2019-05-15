# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to gather facts about DigitalOcean provided tags.
      class Digital_ocean_tag_facts < Base
        # @return [String, nil] Tag name that can be used to identify and reference a tag.
        attribute :tag_name
        validates :tag_name, type: String
      end
    end
  end
end
