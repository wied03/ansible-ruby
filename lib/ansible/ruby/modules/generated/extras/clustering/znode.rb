# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Znode < Base
        # @return [String] A list of ZooKeeper servers (format '[server]:[port]').
        attribute :hosts
        validates :hosts, presence: true, type: String

        # @return [String] The path of the znode.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The value assigned to the znode.
        attribute :value
        validates :value, type: String

        # @return [String] An operation to perform. Mutually exclusive with state.
        attribute :op
        validates :op, type: String

        # @return [String] The state to enforce. Mutually exclusive with op.
        attribute :state
        validates :state, type: String

        # @return [Fixnum] The amount of time to wait for a node to appear.
        attribute :timeout
        validates :timeout, type: Fixnum

        # @return [Object] Recursively delete node and all its children.
        attribute :recursive
      end
    end
  end
end
