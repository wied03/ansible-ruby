# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update or delete any Azure resource using Azure REST API.
      # This module gives access to resources that are not supported via Ansible modules.
      # Refer to https://docs.microsoft.com/en-us/rest/api/ regarding details related to specific resource REST API.
      class Azure_rm_resource < Base
        # @return [Object, nil] Azure RM Resource URL.
        attribute :url

        # @return [String] Specific API version to be used.
        attribute :api_version
        validates :api_version, presence: true, type: String

        # @return [String, nil] Provider type.,Required if URL is not specified.
        attribute :provider
        validates :provider, type: String

        # @return [String, nil] Resource group to be used.,Required if URL is not specified.
        attribute :resource_group
        validates :resource_group, type: String

        # @return [String, nil] Resource type.,Required if URL is not specified.
        attribute :resource_type
        validates :resource_type, type: String

        # @return [String, nil] Resource name.,Required if URL Is not specified.
        attribute :resource_name
        validates :resource_name, type: String

        # @return [Object, nil] List of subresources
        attribute :subresource

        # @return [String, nil] The body of the http request/response to the web service.
        attribute :body
        validates :body, type: String

        # @return [:GET, :PUT, :POST, :HEAD, :PATCH, :DELETE, :MERGE, nil] The HTTP method of the request or response. It MUST be uppercase.
        attribute :method
        validates :method, expression_inclusion: {:in=>[:GET, :PUT, :POST, :HEAD, :PATCH, :DELETE, :MERGE], :message=>"%{value} needs to be :GET, :PUT, :POST, :HEAD, :PATCH, :DELETE, :MERGE"}, allow_nil: true

        # @return [Integer, nil] A valid, numeric, HTTP status code that signifies success of the request. Can also be comma separated list of status codes.
        attribute :status_code
        validates :status_code, type: Integer

        # @return [Symbol, nil] If enabled, idempotency check will be done by using GET method first and then comparing with I(body)
        attribute :idempotency
        validates :idempotency, type: Symbol

        # @return [:absent, :present, nil] Assert the state of the resource. Use C(present) to create or update resource or C(absent) to delete resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
