# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Get facts for a specific web app or all web app in a resource group, or all web app in current subscription.
      class Azure_rm_webapp_facts < Base
        # @return [String, nil] Only show results for a specific web app.
        attribute :name
        validates :name, type: String

        # @return [String, nil] Limit results by resource group.
        attribute :resource_group
        validates :resource_group, type: String

        # @return [Boolean, nil] Indicate wheather to return publishing profile of the web app.
        attribute :return_publish_profile
        validates :return_publish_profile, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Array<String>, String, nil] Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.
        attribute :tags
        validates :tags, type: TypeGeneric.new(String)
      end
    end
  end
end
