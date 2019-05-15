# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages configuration on Cisco FTD devices including creating, updating, removing configuration objects, scheduling and staring jobs, deploying pending changes, etc. All operation are performed over REST API.
      class Ftd_configuration < Base
        # @return [String] The name of the operation to execute. Commonly, the operation starts with 'add', 'edit', 'get' or 'delete' verbs, but can have an arbitrary name too.
        attribute :operation
        validates :operation, presence: true, type: String

        # @return [Hash, nil] Key-value pairs that should be sent as body parameters in a REST API call
        attribute :data
        validates :data, type: Hash

        # @return [Object, nil] Key-value pairs that should be sent as query parameters in a REST API call.
        attribute :query_params

        # @return [Hash, nil] Key-value pairs that should be sent as path parameters in a REST API call.
        attribute :path_params
        validates :path_params, type: Hash

        # @return [String, nil] Specifies Ansible fact name that is used to register received response from the FTD device.
        attribute :register_as
        validates :register_as, type: String

        # @return [Object, nil] Key-value dict that represents equality filters. Every key is a property name and value is its desired value. If multiple filters are present, they are combined with logical operator AND.
        attribute :filters
      end
    end
  end
end
