# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and remove tag(s) to DigitalOcean resource.
      class Digital_ocean_tag < Base
        # @return [String] The name of the tag. The supported characters for names include alphanumeric characters, dashes, and underscores.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The ID of the resource to operate on.,The data type of resource_id is changed from integer to string, from version 2.5.
        attribute :resource_id
        validates :resource_id, type: String

        # @return [:droplet, nil] The type of resource to operate on. Currently, only tagging of droplets is supported.
        attribute :resource_type
        validates :resource_type, expression_inclusion: {:in=>[:droplet], :message=>"%{value} needs to be :droplet"}, allow_nil: true

        # @return [:present, :absent, nil] Whether the tag should be present or absent on the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
