# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, delete, or modify a Direct Connect link aggregation group.
      class Aws_direct_connect_link_aggregation_group < Base
        # @return [:present, :absent, nil] The state of the Direct Connect link aggregation group.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] The name of the Direct Connect link aggregation group.
        attribute :name

        # @return [Object, nil] The ID of the Direct Connect link aggregation group.
        attribute :link_aggregation_group_id

        # @return [Object, nil] The number of connections with which to intialize the link aggregation group.
        attribute :num_connections

        # @return [Object, nil] The minimum number of physical connections that must be operational for the LAG itself to be operational.
        attribute :min_links

        # @return [Object, nil] The location of the link aggregation group.
        attribute :location

        # @return [Object, nil] The bandwidth of the link aggregation group.
        attribute :bandwidth

        # @return [Object, nil] This allows the minimum number of links to be set to 0, any hosted connections disassociated, and any virtual interfaces associated to the LAG deleted.
        attribute :force_delete

        # @return [Object, nil] A connection ID to link with the link aggregation group upon creation.
        attribute :connection_id

        # @return [Object, nil] To be used with I(state=absent) to delete connections after disassociating them with the LAG.
        attribute :delete_with_disassociation

        # @return [Symbol, nil] Whether or not to wait for the operation to complete. May be useful when waiting for virtual interfaces to be deleted. May modify the time of waiting with C(wait_timeout).
        attribute :wait
        validates :wait, type: Symbol

        # @return [Integer, nil] The duration in seconds to wait if I(wait) is True.
        attribute :wait_timeout
        validates :wait_timeout, type: Integer
      end
    end
  end
end
