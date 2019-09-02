# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage DNS zones in a Memset account.
      class Memset_zone < Base
        # @return [:absent, :present] Indicates desired state of resource.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}

        # @return [String] The API key obtained from the Memset control panel.
        attribute :api_key
        validates :api_key, presence: true, type: String

        # @return [String] The zone nickname; usually the same as the main domain. Ensure this value has at most 250 characters.
        attribute :name
        validates :name, presence: true, type: String

        # @return [0, 300, 600, 900, 1800, 3600, 7200, 10800, 21600, 43200, 86400, nil] The default TTL for all records created in the zone. This must be a valid int from U(https://www.memset.com/apidocs/methods_dns.html#dns.zone_create).
        attribute :ttl
        validates :ttl, expression_inclusion: {:in=>[0, 300, 600, 900, 1800, 3600, 7200, 10800, 21600, 43200, 86400], :message=>"%{value} needs to be 0, 300, 600, 900, 1800, 3600, 7200, 10800, 21600, 43200, 86400"}, allow_nil: true

        # @return [Symbol, nil] Forces deletion of a zone and all zone domains/zone records it contains.
        attribute :force
        validates :force, type: Symbol
      end
    end
  end
end
