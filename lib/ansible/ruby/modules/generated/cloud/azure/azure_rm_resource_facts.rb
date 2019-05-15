# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Obtain facts of any resource using Azure REST API.
      # This module gives access to resources that are not supported via Ansible modules.
      # Refer to https://docs.microsoft.com/en-us/rest/api/ regarding details related to specific resource REST API.
      class Azure_rm_resource_facts < Base
        # @return [Object, nil] Azure RM Resource URL.
        attribute :url

        # @return [String] Specific API version to be used.
        attribute :api_version
        validates :api_version, presence: true, type: String

        # @return [String, nil] Provider type, should be specified in no URL is given
        attribute :provider
        validates :provider, type: String

        # @return [String, nil] Resource group to be used.,Required if URL is not specified.
        attribute :resource_group
        validates :resource_group, type: String

        # @return [String, nil] Resource type.
        attribute :resource_type
        validates :resource_type, type: String

        # @return [String, nil] Resource name.
        attribute :resource_name
        validates :resource_name, type: String

        # @return [Object, nil] List of subresources
        attribute :subresource
      end
    end
  end
end
