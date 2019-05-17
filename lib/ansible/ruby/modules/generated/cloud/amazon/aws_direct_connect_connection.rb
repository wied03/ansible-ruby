# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, or delete a Direct Connect connection between a network and a specific AWS Direct Connect location. Upon creation the connection may be added to a link aggregation group or established as a standalone connection. The connection may later be associated or disassociated with a link aggregation group.
      class Aws_direct_connect_connection < Base
        # @return [:present, :absent, nil] The state of the Direct Connect connection.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The name of the Direct Connect connection. This is required to create a new connection. To recreate or delete a connection I(name) or I(connection_id) is required.
        attribute :name
        validates :name, type: String

        # @return [String, nil] The ID of the Direct Connect connection. I(name) or I(connection_id) is required to recreate or delete a connection. Modifying attributes of a connection with I(forced_update) will result in a new Direct Connect connection ID.
        attribute :connection_id
        validates :connection_id, type: String

        # @return [String, nil] Where the Direct Connect connection is located. Required when I(state=present).
        attribute :location
        validates :location, type: String

        # @return [:"1Gbps", :"10Gbps", nil] The bandwidth of the Direct Connect connection. Required when I(state=present).
        attribute :bandwidth
        validates :bandwidth, inclusion: {:in=>[:"1Gbps", :"10Gbps"], :message=>"%{value} needs to be :\"1Gbps\", :\"10Gbps\""}, allow_nil: true

        # @return [String, nil] The ID of the link aggregation group you want to associate with the connection. This is optional in case a stand-alone connection is desired.
        attribute :link_aggregation_group
        validates :link_aggregation_group, type: String

        # @return [Symbol, nil] To modify bandwidth or location the connection will need to be deleted and recreated. By default this will not happen - this option must be set to True.
        attribute :forced_update
        validates :forced_update, type: Symbol
      end
    end
  end
end
