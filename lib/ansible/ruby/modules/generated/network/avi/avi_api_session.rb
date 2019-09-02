# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used for calling any resources defined in Avi REST API. U(https://avinetworks.com/)
      # This module is useful for invoking HTTP Patch methods and accessing resources that do not have an REST object associated with them.
      class Avi_api_session < Base
        # @return [:get, :put, :post, :patch, :delete] Allowed HTTP methods for RESTful services and are supported by Avi Controller.
        attribute :http_method
        validates :http_method, presence: true, expression_inclusion: {:in=>[:get, :put, :post, :patch, :delete], :message=>"%{value} needs to be :get, :put, :post, :patch, :delete"}

        # @return [Hash, nil] HTTP body in YAML or JSON format.
        attribute :data
        validates :data, type: Hash

        # @return [Hash, nil] Query parameters passed to the HTTP API.
        attribute :params
        validates :params, type: Hash

        # @return [String, nil] Path for Avi API resource. For example, C(path: virtualservice) will translate to C(api/virtualserivce).
        attribute :path
        validates :path, type: String

        # @return [Integer, nil] Timeout (in seconds) for Avi API calls.
        attribute :timeout
        validates :timeout, type: Integer
      end
    end
  end
end
