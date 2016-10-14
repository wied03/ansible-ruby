# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Set column values in record in database table.
      class Openvswitch_db < Base
        # @return [String] Identifies the table in the database.
        attribute :table
        validates :table, presence: true, type: String

        # @return [String] Identifies the recoard in the table.
        attribute :record
        validates :record, presence: true, type: String

        # @return [Object] Identifies the column in the record.
        attribute :column
        validates :column, presence: true

        # @return [String] Identifies the key in the record column
        attribute :key
        validates :key, presence: true, type: String

        # @return [String] Expected value for the table, record, column and key.
        attribute :value
        validates :value, presence: true, type: String

        # @return [Integer, nil] How long to wait for ovs-vswitchd to respond
        attribute :timeout
        validates :timeout, type: Integer
      end
    end
  end
end
