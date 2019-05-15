# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Modify ONTAP network routes.
      class Na_ontap_net_routes < Base
        # @return [:present, :absent, nil] Whether you want to create or delete a network route.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name of the vserver.
        attribute :vserver
        validates :vserver, presence: true, type: String

        # @return [String] Specify the route destination.,Example 10.7.125.5/20, fd20:13::/64.
        attribute :destination
        validates :destination, presence: true, type: String

        # @return [String] Specify the route gateway.,Example 10.7.125.1, fd20:13::1.
        attribute :gateway
        validates :gateway, presence: true, type: String

        # @return [String, nil] Specify the route metric.,If this field is not provided the default will be set to 20.
        attribute :metric
        validates :metric, type: String

        # @return [Object, nil] Specify the new route destination.
        attribute :new_destination

        # @return [Object, nil] Specify the new route gateway.
        attribute :new_gateway

        # @return [Object, nil] Specify the new route metric.
        attribute :new_metric
      end
    end
  end
end
