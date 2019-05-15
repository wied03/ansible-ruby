# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # obtain facts about one or more RDS snapshots. These can be for unclustered snapshots or snapshots of clustered DBs (Aurora)
      # Aurora snapshot facts may be obtained if no identifier parameters are passed or if one of the cluster parameters are passed.
      class Rds_snapshot_facts < Base
        # @return [String, nil] Name of an RDS (unclustered) snapshot. Mutually exclusive with I(db_instance_identifier), I(db_cluster_identifier), I(db_cluster_snapshot_identifier)
        attribute :db_snapshot_identifier
        validates :db_snapshot_identifier, type: String

        # @return [String, nil] RDS instance name for which to find snapshots. Mutually exclusive with I(db_snapshot_identifier), I(db_cluster_identifier), I(db_cluster_snapshot_identifier)
        attribute :db_instance_identifier
        validates :db_instance_identifier, type: String

        # @return [Object, nil] RDS cluster name for which to find snapshots. Mutually exclusive with I(db_snapshot_identifier), I(db_instance_identifier), I(db_cluster_snapshot_identifier)
        attribute :db_cluster_identifier

        # @return [Object, nil] Name of an RDS cluster snapshot. Mutually exclusive with I(db_instance_identifier), I(db_snapshot_identifier), I(db_cluster_identifier)
        attribute :db_cluster_snapshot_identifier

        # @return [:automated, :manual, :shared, :public, nil] Type of snapshot to find. By default both automated and manual snapshots will be returned.
        attribute :snapshot_type
        validates :snapshot_type, inclusion: {:in=>[:automated, :manual, :shared, :public], :message=>"%{value} needs to be :automated, :manual, :shared, :public"}, allow_nil: true
      end
    end
  end
end
