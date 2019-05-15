# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage InfluxDB retention policies
      class Influxdb_retention_policy < Base
        # @return [String] Name of the database.
        attribute :database_name
        validates :database_name, presence: true, type: String

        # @return [String] Name of the retention policy
        attribute :policy_name
        validates :policy_name, presence: true, type: String

        # @return [String] Determines how long InfluxDB should keep the data
        attribute :duration
        validates :duration, presence: true, type: String

        # @return [Integer] Determines how many independent copies of each point are stored in the cluster
        attribute :replication
        validates :replication, presence: true, type: Integer

        # @return [Object] Sets the retention policy as default retention policy
        attribute :default
        validates :default, presence: true
      end
    end
  end
end
