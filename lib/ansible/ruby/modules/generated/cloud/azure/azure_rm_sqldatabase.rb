# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete instance of SQL Database.
      class Azure_rm_sqldatabase < Base
        # @return [String] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] The name of the server.
        attribute :server_name
        validates :server_name, presence: true, type: String

        # @return [String] The name of the database to be operated on (updated or created).
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Resource location. If not set, location from the resource group will be used as C(default).
        attribute :location
        validates :location, type: String

        # @return [Object, nil] The collation of the database. If I(create_mode) is not C(default), this value is ignored.
        attribute :collation

        # @return [:copy, :default, :non_readable_secondary, :online_secondary, :point_in_time_restore, :recovery, :restore, :restore_long_term_retention_backup, nil] Specifies the mode of database creation.,C(default): regular database creation.,C(copy): creates a database as a copy of an existing database.,C(online_secondary)/C(non_readable_secondary): creates a database as a (readable or nonreadable) secondary replica of an existing database.,C(point_in_time_restore): Creates a database by restoring a point in time backup of an existing database.,C(recovery): Creates a database by restoring a geo-replicated backup.,C(restore): Creates a database by restoring a backup of a deleted database.,C(restore_long_term_retention_backup): Creates a database by restoring from a long term retention vault.,C(copy), C(non_readable_secondary), C(online_secondary) and C(restore_long_term_retention_backup) are not supported for C(data_warehouse) edition.
        attribute :create_mode
        validates :create_mode, inclusion: {:in=>[:copy, :default, :non_readable_secondary, :online_secondary, :point_in_time_restore, :recovery, :restore, :restore_long_term_retention_backup], :message=>"%{value} needs to be :copy, :default, :non_readable_secondary, :online_secondary, :point_in_time_restore, :recovery, :restore, :restore_long_term_retention_backup"}, allow_nil: true

        # @return [String, nil] Required unless I(create_mode) is C(default) or C(restore_long_term_retention_backup).,Specifies the resource ID of the source database
        attribute :source_database_id
        validates :source_database_id, type: String

        # @return [Object, nil] Required if I(create_mode) is C(restore) and I(source_database_id) is the deleted database's original resource id when it existed (as opposed to its current restorable dropped database id), then this value is required. Specifies the time that the database was deleted.
        attribute :source_database_deletion_date

        # @return [Object, nil] Required if I(create_mode) is C(point_in_time_restore), this value is required. If I(create_mode) is C(restore), this value is optional. Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database. Must be greater than or equal to the source database's earliestRestoreDate value.
        attribute :restore_point_in_time

        # @return [Object, nil] Required if I(create_mode) is C(restore_long_term_retention_backup), then this value is required. Specifies the resource ID of the recovery point to restore from.
        attribute :recovery_services_recovery_point_resource_id

        # @return [:web, :business, :basic, :standard, :premium, :free, :stretch, :data_warehouse, :system, :system2, nil] The edition of the database. The DatabaseEditions enumeration contains all the valid editions. If I(create_mode) is C(non_readable_secondary) or C(online_secondary), this value is ignored. To see possible values, query the capabilities API (/subscriptions/{subscriptionId}/providers/Microsoft.Sql/locations/{locationID}/capabilities) referred to by operationId: 'Capabilities_ListByLocation.'.
        attribute :edition
        validates :edition, inclusion: {:in=>[:web, :business, :basic, :standard, :premium, :free, :stretch, :data_warehouse, :system, :system2], :message=>"%{value} needs to be :web, :business, :basic, :standard, :premium, :free, :stretch, :data_warehouse, :system, :system2"}, allow_nil: true

        # @return [Object, nil] The max size of the database expressed in bytes. If I(create_mode) is not C(default), this value is ignored. To see possible values, query the capabilities API (/subscriptions/{subscriptionId}/providers/Microsoft.Sql/locations/{locationID}/capabilities) referred to by operationId: 'Capabilities_ListByLocation.'
        attribute :max_size_bytes

        # @return [Object, nil] The name of the elastic pool the database is in. Not supported for C(data_warehouse) edition.
        attribute :elastic_pool_name

        # @return [Symbol, nil] If the database is a geo-secondary, indicates whether read-only connections are allowed to this database or not. Not supported for C(data_warehouse) edition.
        attribute :read_scale
        validates :read_scale, type: Symbol

        # @return [:adventure_works_lt, nil] Indicates the name of the sample schema to apply when creating this database. If I(create_mode) is not C(default), this value is ignored. Not supported for C(data_warehouse) edition.
        attribute :sample_name
        validates :sample_name, inclusion: {:in=>[:adventure_works_lt], :message=>"%{value} needs to be :adventure_works_lt"}, allow_nil: true

        # @return [Symbol, nil] Is this database is zone redundant? It means the replicas of this database will be spread across multiple availability zones.
        attribute :zone_redundant
        validates :zone_redundant, type: Symbol

        # @return [Symbol, nil] SQL Database will be updated if given parameters differ from existing resource state.,To force SQL Database update in any circumstances set this parameter to True.
        attribute :force_update
        validates :force_update, type: Symbol

        # @return [:absent, :present, nil] Assert the state of the SQL Database. Use 'present' to create or update an SQL Database and 'absent' to delete it.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
