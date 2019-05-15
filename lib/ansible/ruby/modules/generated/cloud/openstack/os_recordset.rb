# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage OpenStack DNS recordsets. Recordsets can be created, deleted or updated. Only the I(records), I(description), and I(ttl) values can be updated.
      class Os_recordset < Base
        # @return [String] Zone managing the recordset
        attribute :zone
        validates :zone, presence: true, type: String

        # @return [String] Name of the recordset
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Recordset type
        attribute :recordset_type
        validates :recordset_type, presence: true, type: String

        # @return [Array<String>, String] List of recordset definitions
        attribute :records
        validates :records, presence: true, type: TypeGeneric.new(String)

        # @return [String, nil] Description of the recordset
        attribute :description
        validates :description, type: String

        # @return [Integer, nil] TTL (Time To Live) value in seconds
        attribute :ttl
        validates :ttl, type: Integer

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Ignored. Present for backwards compatibility
        attribute :availability_zone
      end
    end
  end
end
