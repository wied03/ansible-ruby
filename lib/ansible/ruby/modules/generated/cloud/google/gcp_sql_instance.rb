# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Represents a Cloud SQL instance. Cloud SQL instances are SQL databases hosted in Google's cloud. The Instances resource provides methods for common configuration and management tasks.
      class Gcp_sql_instance < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:FIRST_GEN, :SECOND_GEN, :EXTERNAL, nil] * FIRST_GEN: First Generation instance. MySQL only.,* SECOND_GEN: Second Generation instance or PostgreSQL instance.,* EXTERNAL: A database server that is not managed by Google.
        attribute :backend_type
        validates :backend_type, expression_inclusion: {:in=>[:FIRST_GEN, :SECOND_GEN, :EXTERNAL], :message=>"%{value} needs to be :FIRST_GEN, :SECOND_GEN, :EXTERNAL"}, allow_nil: true

        # @return [Object, nil] Connection name of the Cloud SQL instance used in connection strings.
        attribute :connection_name

        # @return [:MYSQL_5_5, :MYSQL_5_6, :MYSQL_5_7, :POSTGRES_9_6, nil] The database engine type and version. For First Generation instances, can be MYSQL_5_5, or MYSQL_5_6. For Second Generation instances, can be MYSQL_5_6 or MYSQL_5_7. Defaults to MYSQL_5_6.,PostgreSQL instances: POSTGRES_9_6  The databaseVersion property can not be changed after instance creation.
        attribute :database_version
        validates :database_version, expression_inclusion: {:in=>[:MYSQL_5_5, :MYSQL_5_6, :MYSQL_5_7, :POSTGRES_9_6], :message=>"%{value} needs to be :MYSQL_5_5, :MYSQL_5_6, :MYSQL_5_7, :POSTGRES_9_6"}, allow_nil: true

        # @return [Object, nil] The name and status of the failover replica. This property is applicable only to Second Generation instances.
        attribute :failover_replica

        # @return [:CLOUD_SQL_INSTANCE, :ON_PREMISES_INSTANCE, :READ_REPLICA_INSTANCE, nil] The instance type. This can be one of the following.,* CLOUD_SQL_INSTANCE: A Cloud SQL instance that is not replicating   from a master.,* ON_PREMISES_INSTANCE: An instance running on the customer's   premises.,* READ_REPLICA_INSTANCE: A Cloud SQL instance configured as a   read-replica.
        attribute :instance_type
        validates :instance_type, expression_inclusion: {:in=>[:CLOUD_SQL_INSTANCE, :ON_PREMISES_INSTANCE, :READ_REPLICA_INSTANCE], :message=>"%{value} needs to be :CLOUD_SQL_INSTANCE, :ON_PREMISES_INSTANCE, :READ_REPLICA_INSTANCE"}, allow_nil: true

        # @return [Object, nil] The IPv6 address assigned to the instance. This property is applicable only to First Generation instances.
        attribute :ipv6_address

        # @return [Object, nil] The name of the instance which will act as master in the replication setup.
        attribute :master_instance_name

        # @return [Object, nil] The maximum disk size of the instance in bytes.
        attribute :max_disk_size

        # @return [String] Name of the Cloud SQL instance. This does not include the project ID.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The geographical region. Defaults to us-central or us-central1 depending on the instance type (First Generation or Second Generation/PostgreSQL).
        attribute :region
        validates :region, type: String

        # @return [Object, nil] Configuration specific to failover replicas and read replicas.
        attribute :replica_configuration

        # @return [Hash, nil] The user settings.
        attribute :settings
        validates :settings, type: Hash
      end
    end
  end
end
