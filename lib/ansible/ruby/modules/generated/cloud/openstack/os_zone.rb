# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage OpenStack DNS zones. Zones can be created, deleted or updated. Only the I(email), I(description), I(ttl) and I(masters) values can be updated.
      class Os_zone < Base
        # @return [String] Zone name
        attribute :name
        validates :name, presence: true, type: String

        # @return [:primary, :secondary, nil] Zone type
        attribute :zone_type
        validates :zone_type, inclusion: {:in=>[:primary, :secondary], :message=>"%{value} needs to be :primary, :secondary"}, allow_nil: true

        # @return [String, nil] Email of the zone owner (only applies if zone_type is primary)
        attribute :email
        validates :email, type: String

        # @return [String, nil] Zone description
        attribute :description
        validates :description, type: String

        # @return [Integer, nil] TTL (Time To Live) value in seconds
        attribute :ttl
        validates :ttl, type: Integer

        # @return [Object, nil] Master nameservers (only applies if zone_type is secondary)
        attribute :masters

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Ignored. Present for backwards compatibility
        attribute :availability_zone
      end
    end
  end
end
