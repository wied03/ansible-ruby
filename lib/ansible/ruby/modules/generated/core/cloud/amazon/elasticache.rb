# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Elasticache < Base
        # @return [:present, :absent, :rebooted] C(absent) or C(present) are idempotent actions that will create or destroy a cache cluster as needed. C(rebooted) will reboot the cluster, resulting in a momentary outage.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :rebooted], :message=>"%{value} needs to be :present, :absent, :rebooted"}

        # @return [String] The cache cluster identifier
        attribute :name
        validates :name, presence: true, type: String

        # @return [:redis, :memcached, nil] Name of the cache engine to be used.
        attribute :engine
        validates :engine, inclusion: {:in=>[:redis, :memcached], :message=>"%{value} needs to be :redis, :memcached"}, allow_nil: true

        # @return [String, nil] The version number of the cache engine
        attribute :cache_engine_version
        validates :cache_engine_version, type: String

        # @return [String, nil] The compute and memory capacity of the nodes in the cache cluster
        attribute :node_type
        validates :node_type, type: String

        # @return [Integer, nil] The initial number of cache nodes that the cache cluster will have. Required when state=present.
        attribute :num_nodes
        validates :num_nodes, type: Integer

        # @return [Integer, nil] The port number on which each of the cache nodes will accept connections
        attribute :cache_port
        validates :cache_port, type: Integer

        # @return [Object, nil] The name of the cache parameter group to associate with this cache cluster. If this argument is omitted, the default cache parameter group for the specified engine will be used.
        attribute :cache_parameter_group

        # @return [Object, nil] The subnet group name to associate with. Only use if inside a vpc. Required if inside a vpc
        attribute :cache_subnet_group

        # @return [Object, nil] A list of vpc security group names to associate with this cache cluster. Only use if inside a vpc
        attribute :security_group_ids

        # @return [Array<String>, String, nil] A list of cache security group names to associate with this cache cluster. Must be an empty list if inside a vpc
        attribute :cache_security_groups
        validates :cache_security_groups, type: TypeGeneric.new(String)

        # @return [String, nil] The EC2 Availability Zone in which the cache cluster will be created
        attribute :zone
        validates :zone, type: String

        # @return [Boolean, nil] Wait for cache cluster result before returning
        attribute :wait
        validates :wait, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Whether to destroy and recreate an existing cache cluster if necessary in order to modify its state
        attribute :hard_modify
        validates :hard_modify, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
