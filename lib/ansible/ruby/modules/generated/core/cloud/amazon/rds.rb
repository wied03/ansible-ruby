# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates, deletes, or modifies rds instances.  When creating an instance it can be either a new instance or a read-only replica of an existing instance. This module has a dependency on python-boto >= 2.5. The 'promote' command requires boto >= 2.18.0. Certain features such as tags rely on boto.rds2 (boto >= 2.26.0)
      class Rds < Base
        # @return [:create, :replicate, :delete, :facts, :modify, :promote, :snapshot, :reboot, :restore] Specifies the action to take. The 'reboot' option is available starting at version 2.0
        attribute :command
        validates :command, presence: true, inclusion: {:in=>[:create, :replicate, :delete, :facts, :modify, :promote, :snapshot, :reboot, :restore], :message=>"%{value} needs to be :create, :replicate, :delete, :facts, :modify, :promote, :snapshot, :reboot, :restore"}

        # @return [String, nil] Database instance identifier. Required except when using command=facts or command=delete on just a snapshot
        attribute :instance_name
        validates :instance_name, type: String

        # @return [String, nil] Name of the database to replicate. Used only when command=replicate.
        attribute :source_instance
        validates :source_instance, type: String

        # @return [:MySQL, :"oracle-se1", :"oracle-se", :"oracle-ee", :"sqlserver-ee", :"sqlserver-se", :"sqlserver-ex", :"sqlserver-web", :postgres, nil] The type of database.  Used only when command=create.
        attribute :db_engine
        validates :db_engine, inclusion: {:in=>[:MySQL, :"oracle-se1", :"oracle-se", :"oracle-ee", :"sqlserver-ee", :"sqlserver-se", :"sqlserver-ex", :"sqlserver-web", :postgres], :message=>"%{value} needs to be :MySQL, :\"oracle-se1\", :\"oracle-se\", :\"oracle-ee\", :\"sqlserver-ee\", :\"sqlserver-se\", :\"sqlserver-ex\", :\"sqlserver-web\", :postgres"}, allow_nil: true

        # @return [Integer, nil] Size in gigabytes of the initial storage for the DB instance. Used only when command=create or command=modify.
        attribute :size
        validates :size, type: Integer

        # @return [String, nil] The instance type of the database.  Must be specified when command=create. Optional when command=replicate, command=modify or command=restore. If not specified then the replica inherits the same instance type as the source instance.
        attribute :instance_type
        validates :instance_type, type: String

        # @return [String, nil] Master database username. Used only when command=create.
        attribute :username
        validates :username, type: String

        # @return [String, nil] Password for the master database username. Used only when command=create or command=modify.
        attribute :password
        validates :password, type: String

        # @return [String] The AWS region to use. If not specified then the value of the EC2_REGION environment variable, if any, is used.
        attribute :region
        validates :region, presence: true, type: String

        # @return [Object, nil] Name of a database to create within the instance.  If not specified then no database is created. Used only when command=create.
        attribute :db_name

        # @return [Object, nil] Version number of the database engine to use. Used only when command=create. If not specified then the current Amazon RDS default engine version is used.
        attribute :engine_version

        # @return [Object, nil] Name of the DB parameter group to associate with this instance.  If omitted then the RDS default DBParameterGroup will be used. Used only when command=create or command=modify.
        attribute :parameter_group

        # @return [:"license-included", :"bring-your-own-license", :"general-public-license", :"postgresql-license", nil] The license model for this DB instance. Used only when command=create or command=restore.
        attribute :license_model
        validates :license_model, inclusion: {:in=>[:"license-included", :"bring-your-own-license", :"general-public-license", :"postgresql-license"], :message=>"%{value} needs to be :\"license-included\", :\"bring-your-own-license\", :\"general-public-license\", :\"postgresql-license\""}, allow_nil: true

        # @return [:yes, :no, nil] Specifies if this is a Multi-availability-zone deployment. Can not be used in conjunction with zone parameter. Used only when command=create or command=modify.
        attribute :multi_zone
        validates :multi_zone, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Specifies the number of IOPS for the instance.  Used only when command=create or command=modify. Must be an integer greater than 1000.
        attribute :iops

        # @return [Object, nil] Comma separated list of one or more security groups.  Used only when command=create or command=modify.
        attribute :security_groups

        # @return [String, nil] Comma separated list of one or more vpc security group ids. Also requires `subnet` to be specified. Used only when command=create or command=modify.
        attribute :vpc_security_groups
        validates :vpc_security_groups, type: String

        # @return [Integer, nil] Port number that the DB instance uses for connections. Used only when command=create or command=replicate.,Prior to 2.0 it always defaults to null and the API would use 3306, it had to be set to other DB default values when not using MySql. Starting at 2.0 it auotmaticaly defaults to what is expected for each c(db_engine).
        attribute :port
        validates :port, type: Integer

        # @return [Boolean, nil] Indicates that minor version upgrades should be applied automatically. Used only when command=create or command=replicate.
        attribute :upgrade
        validates :upgrade, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] The name of the option group to use.  If not specified then the default option group is used. Used only when command=create.
        attribute :option_group

        # @return [Object, nil] Maintenance window in format of ddd:hh24:mi-ddd:hh24:mi.  (Example: Mon:22:00-Mon:23:15) If not specified then a random maintenance window is assigned. Used only when command=create or command=modify.
        attribute :maint_window

        # @return [Object, nil] Backup window in format of hh24:mi-hh24:mi.  If not specified then a random backup window is assigned. Used only when command=create or command=modify.
        attribute :backup_window

        # @return [Object, nil] Number of days backups are retained.  Set to 0 to disable backups.  Default is 1 day.  Valid range: 0-35. Used only when command=create or command=modify.
        attribute :backup_retention

        # @return [String, nil] availability zone in which to launch the instance. Used only when command=create, command=replicate or command=restore.
        attribute :zone
        validates :zone, type: String

        # @return [String, nil] VPC subnet group.  If specified then a VPC instance is created. Used only when command=create.
        attribute :subnet
        validates :subnet, type: String

        # @return [String, nil] Name of snapshot to take. When command=delete, if no snapshot name is provided then no snapshot is taken. If used with command=delete with no instance_name, the snapshot is deleted. Used with command=facts, command=delete or command=snapshot.
        attribute :snapshot
        validates :snapshot, type: String

        # @return [Object, nil] AWS secret key. If not set then the value of the AWS_SECRET_KEY environment variable is used.
        attribute :aws_secret_key

        # @return [Object, nil] AWS access key. If not set then the value of the AWS_ACCESS_KEY environment variable is used.
        attribute :aws_access_key

        # @return [:yes, :no, nil] When command=create, replicate, modify or restore then wait for the database to enter the 'available' state.  When command=delete wait for the database to be terminated.
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [Boolean, nil] Used only when command=modify.  If enabled, the modifications will be applied as soon as possible rather than waiting for the next preferred maintenance window.
        attribute :apply_immediately
        validates :apply_immediately, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:yes, :no, nil] Used only when command=reboot.  If enabled, the reboot is done using a MultiAZ failover.
        attribute :force_failover
        validates :force_failover, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Name to rename an instance to. Used only when command=modify.
        attribute :new_instance_name
        validates :new_instance_name, type: String

        # @return [Object, nil] Associate the DB instance with a specified character set. Used with command=create.
        attribute :character_set_name

        # @return [Boolean, nil] explicitly set whether the resource should be publicly accessible or not. Used with command=create, command=replicate. Requires boto >= 2.26.0
        attribute :publicly_accessible
        validates :publicly_accessible, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Hash, nil] tags dict to apply to a resource. Used with command=create, command=replicate, command=restore. Requires boto >= 2.26.0
        attribute :tags
        validates :tags, type: Hash
      end
    end
  end
end
