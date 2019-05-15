# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Set column values in record in database table.
      class Openvswitch_db < Base
        # @return [:present, :absent, nil] Configures the state of the key. When set to I(present), the I(key) and I(value) pair will be set on the I(record) and when set to I(absent) the I(key) will not be set.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Identifies the table in the database.
        attribute :table
        validates :table, presence: true, type: String

        # @return [String] Identifies the recoard in the table.
        attribute :record
        validates :record, presence: true, type: String

        # @return [String] Identifies the column in the record.
        attribute :col
        validates :col, presence: true, type: String

        # @return [String, nil] Identifies the key in the record column, when the column is a map type.
        attribute :key
        validates :key, type: String

        # @return [Boolean] Expected value for the table, record, column and key.
        attribute :value
        validates :value, presence: true, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}

        # @return [Integer, nil] How long to wait for ovs-vswitchd to respond
        attribute :timeout
        validates :timeout, type: Integer
      end
    end
  end
end
