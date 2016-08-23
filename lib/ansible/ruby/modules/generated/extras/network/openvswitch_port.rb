# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Openvswitch_port < Base
        # @return [String] Name of bridge to manage
        attribute :bridge
        validates :bridge, presence: true, type: String

        # @return [String] Name of port to manage on the bridge
        attribute :port
        validates :port, presence: true, type: String

        # @return [String] Whether the port should exist
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Fixnum] How long to wait for ovs-vswitchd to respond
        attribute :timeout
        validates :timeout, type: Fixnum

        # @return [Hash] Dictionary of external_ids applied to a port.
        attribute :external_ids
        validates :external_ids, type: Hash

        # @return [String] Set a single property on a port.
        attribute :set
        validates :set, type: String
      end
    end
  end
end
