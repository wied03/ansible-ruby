# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # A Cloud Spanner Database which is hosted on a Spanner instance.
      class Gcp_spanner_database < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] A unique identifier for the database, which cannot be changed after the instance is created. Values are of the form projects/<project>/instances/[a-z][-a-z0-9]*[a-z0-9]. The final segment of the name must be between 6 and 30 characters in length.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] An optional list of DDL statements to run inside the newly created database. Statements can create tables, indexes, etc. These statements execute atomically with the creation of the database: if there is an error in any statement, the database is not created.
        attribute :extra_statements

        # @return [String] The instance to create the database on.
        attribute :instance
        validates :instance, presence: true, type: String
      end
    end
  end
end
