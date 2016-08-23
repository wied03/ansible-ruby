# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
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

        # @return [Array, nil] list of dictionaries describing indexes to add to the table. global indexes can be updated. local indexes don't support updates or have throughput.,required options: ['name', 'type', 'hash_key_name'],valid types: ['all', 'global_all', 'global_include', 'global_keys_only', 'include', 'keys_only'],other options: ['hash_key_type', 'range_key_name', 'range_key_type', 'includes', 'read_capacity', 'write_capacity']
        attribute :indexes
        validates :indexes, type: Array
      end
    end
  end
end
