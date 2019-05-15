# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts about VPN Connections in AWS.
      class Ec2_vpc_vpn_facts < Base
        # @return [Hash, nil] A dict of filters to apply. Each dict item consists of a filter key and a filter value. See U(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnConnections.html) for possible filters.
        attribute :filters
        validates :filters, type: Hash

        # @return [Object, nil] Get details of a specific VPN connections using vpn connection ID/IDs. This value should be provided as a list.
        attribute :vpn_connection_ids
      end
    end
  end
end
