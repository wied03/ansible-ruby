# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Represents a SQL database inside the Cloud SQL instance, hosted in Google's cloud.
      class Gcp_sql_database < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The MySQL charset value.
        attribute :charset
        validates :charset, type: String

        # @return [Object, nil] The MySQL collation value.
        attribute :collation

        # @return [String, nil] The name of the database in the Cloud SQL instance.,This does not include the project ID or instance name.
        attribute :name
        validates :name, type: String

        # @return [String] The name of the Cloud SQL instance. This does not include the project ID.
        attribute :instance
        validates :instance, presence: true, type: String
      end
    end
  end
end
