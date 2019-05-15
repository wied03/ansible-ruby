# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates/Deletes/Updates a single record in ServiceNow
      class Snow_record < Base
        # @return [String] The service now instance name
        attribute :instance
        validates :instance, presence: true, type: String

        # @return [String] User to connect to ServiceNow as
        attribute :username
        validates :username, presence: true, type: String

        # @return [String] Password for username
        attribute :password
        validates :password, presence: true, type: String

        # @return [String, nil] Table to query for records
        attribute :table
        validates :table, type: String

        # @return [:present, :absent] If C(present) is supplied with a C(number) argument, the module will attempt to update the record with the supplied data.  If no such record exists, a new one will be created.  C(absent) will delete a record.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Hash, nil] key, value pairs of data to load into the record. See Examples. Required for C(state:present)
        attribute :data
        validates :data, type: Hash

        # @return [String, Integer, nil] Record number to update. Required for C(state:absent)
        attribute :number
        validates :number, type: MultipleTypes.new(String, Integer)

        # @return [String, nil] Changes the field that C(number) uses to find records
        attribute :lookup_field
        validates :lookup_field, type: String

        # @return [String, nil] Attach a file to the record
        attribute :attachment
        validates :attachment, type: String
      end
    end
  end
end
