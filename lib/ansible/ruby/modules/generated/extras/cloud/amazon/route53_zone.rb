# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Route53_zone < Base
        # @return [String] The DNS zone record (eg: foo.com.)
        attribute :zone
        validates :zone, presence: true, type: String

        # @return [Boolean, nil] whether or not the zone should exist or not
        attribute :state
        validates :state, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The VPC ID the zone should be a part of (if this is going to be a private zone)
        attribute :vpc_id
        validates :vpc_id, type: String

        # @return [String, nil] The VPC Region the zone should be a part of (if this is going to be a private zone)
        attribute :vpc_region
        validates :vpc_region, type: String

        # @return [String, nil] Comment associated with the zone
        attribute :comment
        validates :comment, type: String
      end
    end
  end
end
