# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or delete AWS Dynamo DB tables.
      # Can update the provisioned throughput on existing tables.
      # Returns the status of the specified table.
      class Dynamodb_table < Base
        # @return [:present, :absent, nil] Create or delete the table
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Name of the table.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Name of the hash key.,Required when C(state=present).
        attribute :hash_key_name
        validates :hash_key_name, type: String

        # @return [:STRING, :NUMBER, :BINARY, nil] Type of the hash key.
        attribute :hash_key_type
        validates :hash_key_type, inclusion: {:in=>[:STRING, :NUMBER, :BINARY], :message=>"%{value} needs to be :STRING, :NUMBER, :BINARY"}, allow_nil: true

        # @return [String, nil] Name of the range key.
        attribute :range_key_name
        validates :range_key_name, type: String

        # @return [:STRING, :NUMBER, :BINARY, nil] Type of the range key.
        attribute :range_key_type
        validates :range_key_type, inclusion: {:in=>[:STRING, :NUMBER, :BINARY], :message=>"%{value} needs to be :STRING, :NUMBER, :BINARY"}, allow_nil: true

        # @return [Integer, nil] Read throughput capacity (units) to provision.
        attribute :read_capacity
        validates :read_capacity, type: Integer

        # @return [Integer, nil] Write throughput capacity (units) to provision.
        attribute :write_capacity
        validates :write_capacity, type: Integer

        # @return [Object, nil] list of dictionaries describing indexes to add to the table. global indexes can be updated. local indexes don't support updates or have throughput.,required options: ['name', 'type', 'hash_key_name'],valid types: ['all', 'global_all', 'global_include', 'global_keys_only', 'include', 'keys_only'],other options: ['hash_key_type', 'range_key_name', 'range_key_type', 'includes', 'read_capacity', 'write_capacity']
        attribute :indexes

        # @return [Hash, nil] a hash/dictionary of tags to add to the new instance or for starting/stopping instance by tag; '{"key":"value"}' and '{"key":"value","key":"value"}'
        attribute :tags
        validates :tags, type: Hash

        # @return [Integer, nil] how long before wait gives up, in seconds. only used when tags is set
        attribute :wait_for_active_timeout
        validates :wait_for_active_timeout, type: Integer
      end
    end
  end
end
