# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Get facts for Container Registry.
      class Azure_rm_containerregistry_facts < Base
        # @return [String] The name of the resource group to which the container registry belongs.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String, nil] The name of the container registry.
        attribute :name
        validates :name, type: String

        # @return [Symbol, nil] Retrieve credentials for container registry.
        attribute :retrieve_credentials
        validates :retrieve_credentials, type: Symbol

        # @return [Object, nil] Limit results by providing a list of tags. Format tags as 'key' or 'key:value'.
        attribute :tags
      end
    end
  end
end
