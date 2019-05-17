# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, delete, retrieve, and update znodes using ZooKeeper.
      class Znode < Base
        # @return [String] A list of ZooKeeper servers (format '[server]:[port]').
        attribute :hosts
        validates :hosts, presence: true, type: String

        # @return [String] The path of the znode.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The value assigned to the znode.
        attribute :value
        validates :value, type: String

        # @return [String, nil] An operation to perform. Mutually exclusive with state.
        attribute :op
        validates :op, type: String

        # @return [String, nil] The state to enforce. Mutually exclusive with op.
        attribute :state
        validates :state, type: String

        # @return [Integer, nil] The amount of time to wait for a node to appear.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [:yes, :no, nil] Recursively delete node and all its children.
        attribute :recursive
        validates :recursive, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
