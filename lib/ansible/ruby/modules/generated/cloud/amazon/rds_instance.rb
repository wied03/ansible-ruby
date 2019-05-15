# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, modify, and delete RDS instances.
      class Rds_instance < Base
        # @return [:present, :absent, :terminated, :running, :started, :stopped, :rebooted, :restarted, nil] Whether the snapshot should exist or not. I(rebooted) is not idempotent and will leave the DB instance in a running state and start it prior to rebooting if it was stopped. I(present) will leave the DB instance in the current running/stopped state, (running if creating the DB instance).,I(state=running) and I(state=started) are synonyms, as are I(state=rebooted) and I(state=restarted). Note - rebooting the instance is not idempotent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :terminated, :running, :started, :stopped, :rebooted, :restarted], :message=>"%{value} needs to be :present, :absent, :terminated, :running, :started, :stopped, :rebooted, :restarted"}, allow_nil: true

        # @return [:snapshot, :s3, :instance, nil] Which source to use if restoring from a template (an existing instance, S3 bucket, or snapshot).
        attribute :creation_source
        validates :creation_source, inclusion: {:in=>[:snapshot, :s3, :instance], :message=>"%{value} needs to be :snapshot, :s3, :instance"}, allow_nil: true

        # @return [Boolean, nil] Set to True to update your cluster password with I(master_user_password). Since comparing passwords to determine if it needs to be updated is not possible this is set to False by default to allow idempotence.
        attribute :force_update_password
        validates :force_update_password, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Set to False to retain any enabled cloudwatch logs that aren't specified in the task and are associated with the instance.
        attribute :purge_cloudwatch_logs_exports
        validates :purge_cloudwatch_logs_exports, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Set to False to retain any tags that aren't specified in task and are associated with the instance.
        attribute :purge_tags
        validates :purge_tags, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Set to False to promote a read replica cluster or true to create one. When creating a read replica C(creation_source) should be set to 'instance' or not provided. C(source_db_instance_identifier) must be provided with this option.
        attribute :read_replica

        # @return [Boolean, nil] Whether to wait for the cluster to be available, stopped, or deleted. At a later time a wait_timeout option may be added. Following each API call to create/modify/delete the instance a waiter is used with a 60 second delay 30 times until the instance reaches the expected state (available/stopped/deleted). The total task time may also be influenced by AWSRetry which helps stabilize if the instance is in an invalid state to operate on to begin with (such as if you try to stop it when it is in the process of rebooting). If setting this to False task retries and delays may make your playbook execution better handle timeouts for major modifications.
        attribute :wait
        validates :wait, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The amount of storage (in gibibytes) to allocate for the DB instance.
        attribute :allocated_storage
        validates :allocated_storage, type: String

        # @return [Object, nil] Whether to allow major version upgrades.
        attribute :allow_major_version_upgrade

        # @return [Boolean, nil] A value that specifies whether modifying a cluster with I(new_db_instance_identifier) and I(master_user_password) should be applied as soon as possible, regardless of the I(preferred_maintenance_window) setting. If false, changes are applied during the next maintenance window.
        attribute :apply_immediately
        validates :apply_immediately, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Whether minor version upgrades are applied automatically to the DB instance during the maintenance window.
        attribute :auto_minor_version_upgrade

        # @return [Object, nil] A list of EC2 Availability Zones that instances in the DB cluster can be created in. May be used when creating a cluster or when restoring from S3 or a snapshot. Mutually exclusive with I(multi_az).
        attribute :availability_zone

        # @return [Object, nil] The number of days for which automated backups are retained (must be greater or equal to 1). May be used when creating a new cluster, when restoring from S3, or when modifying a cluster.
        attribute :backup_retention_period

        # @return [Object, nil] The identifier of the CA certificate for the DB instance.
        attribute :ca_certificate_identifier

        # @return [Object, nil] The character set to associate with the DB cluster.
        attribute :character_set_name

        # @return [Object, nil] Whether or not to copy all tags from the DB instance to snapshots of the instance. When initially creating a DB instance the RDS API defaults this to false if unspecified.
        attribute :copy_tags_to_snapshot

        # @return [Object, nil] The DB cluster (lowercase) identifier to add the aurora DB instance to. The identifier must contain from 1 to 63 letters, numbers, or hyphens and the first character must be a letter and may not end in a hyphen or contain consecutive hyphens.
        attribute :db_cluster_identifier

        # @return [String, nil] The compute and memory capacity of the DB instance, for example db.t2.micro.
        attribute :db_instance_class
        validates :db_instance_class, type: String

        # @return [String] The DB instance (lowercase) identifier. The identifier must contain from 1 to 63 letters, numbers, or hyphens and the first character must be a letter and may not end in a hyphen or contain consecutive hyphens.
        attribute :db_instance_identifier
        validates :db_instance_identifier, presence: true, type: String

        # @return [Object, nil] The name for your database. If a name is not provided Amazon RDS will not create a database.
        attribute :db_name

        # @return [Object, nil] The name of the DB parameter group to associate with this DB instance. When creating the DB instance if this argument is omitted the default DBParameterGroup for the specified engine is used.
        attribute :db_parameter_group_name

        # @return [Object, nil] (EC2-Classic platform) A list of DB security groups to associate with this DB instance.
        attribute :db_security_groups

        # @return [Object, nil] The identifier for the DB snapshot to restore from if using I(creation_source=snapshot).
        attribute :db_snapshot_identifier

        # @return [Object, nil] The DB subnet group name to use for the DB instance.
        attribute :db_subnet_group_name

        # @return [Object, nil] The Active Directory Domain to restore the instance in.
        attribute :domain

        # @return [Object, nil] The name of the IAM role to be used when making API calls to the Directory Service.
        attribute :domain_iam_role_name

        # @return [Object, nil] A list of log types that need to be enabled for exporting to CloudWatch Logs.
        attribute :enable_cloudwatch_logs_exports

        # @return [Object, nil] Enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. If this option is omitted when creating the cluster, Amazon RDS sets this to False.
        attribute :enable_iam_database_authentication

        # @return [Object, nil] Whether to enable Performance Insights for the DB instance.
        attribute :enable_performance_insights

        # @return [String, nil] The name of the database engine to be used for this DB instance. This is required to create an instance. Valid choices are aurora | aurora-mysql | aurora-postgresql | mariadb | mysql | oracle-ee | oracle-se | oracle-se1 | oracle-se2 | postgres | sqlserver-ee | sqlserver-ex | sqlserver-se | sqlserver-web
        attribute :engine
        validates :engine, type: String

        # @return [Object, nil] The version number of the database engine to use. For Aurora MySQL that could be 5.6.10a , 5.7.12. Aurora PostgreSQL example, 9.6.3
        attribute :engine_version

        # @return [Object, nil] The DB instance snapshot identifier of the new DB instance snapshot created when I(skip_final_snapshot) is false.
        attribute :final_db_snapshot_identifier

        # @return [Object, nil] Set to true to conduct the reboot through a MultiAZ failover.
        attribute :force_failover

        # @return [Object, nil] The Provisioned IOPS (I/O operations per second) value.
        attribute :iops

        # @return [Object, nil] The ARN of the AWS KMS key identifier for an encrypted DB instance. If you are creating a DB instance with the same AWS account that owns the KMS encryption key used to encrypt the new DB instance, then you can use the KMS key alias instead of the ARN for the KM encryption key.,If I(storage_encrypted) is true and and this option is not provided, the default encryption key is used.
        attribute :kms_key_id

        # @return [:"license-included", :"bring-your-own-license", :"general-public-license", nil] The license model for the DB instance.
        attribute :license_model
        validates :license_model, inclusion: {:in=>[:"license-included", :"bring-your-own-license", :"general-public-license"], :message=>"%{value} needs to be :\"license-included\", :\"bring-your-own-license\", :\"general-public-license\""}, allow_nil: true

        # @return [Object, nil] An 8-41 character password for the master database user. The password can contain any printable ASCII character except "/",
        attribute :master_user_password
      end
    end
  end
end
