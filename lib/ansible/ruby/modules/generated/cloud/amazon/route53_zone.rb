# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates and deletes Route53 private and public zones
      class Route53_zone < Base
        # @return [String] The DNS zone record (eg: foo.com.)
        attribute :zone
        validates :zone, presence: true, type: String

        # @return [:present, :absent, nil] whether or not the zone should exist or not
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The VPC ID the zone should be a part of (if this is going to be a private zone)
        attribute :vpc_id
        validates :vpc_id, type: String

        # @return [String, nil] The VPC Region the zone should be a part of (if this is going to be a private zone)
        attribute :vpc_region
        validates :vpc_region, type: String

        # @return [String, nil] Comment associated with the zone
        attribute :comment
        validates :comment, type: String

        # @return [Object, nil] The unique zone identifier you want to delete or "all" if there are many zones with the same domain name. Required if there are multiple zones identified with the above options
        attribute :hosted_zone_id

        # @return [String, nil] The reusable delegation set ID to be associated with the zone. Note that you can't associate a reusable delegation set with a private hosted zone.
        attribute :delegation_set_id
        validates :delegation_set_id, type: String
      end
    end
  end
end
