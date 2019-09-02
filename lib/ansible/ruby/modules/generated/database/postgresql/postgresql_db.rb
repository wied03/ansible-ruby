# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove PostgreSQL databases from a remote host.
      class Postgresql_db < Base
        # @return [String] name of the database to add or remove
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Name of the role to set as owner of the database
        attribute :owner

        # @return [String, nil] Template used to create the database
        attribute :template
        validates :template, type: String

        # @return [String, nil] Encoding of the database
        attribute :encoding
        validates :encoding, type: String

        # @return [String, nil] Collation order (LC_COLLATE) to use in the database. Must match collation order of template database unless C(template0) is used as template.
        attribute :lc_collate
        validates :lc_collate, type: String

        # @return [String, nil] Character classification (LC_CTYPE) to use in the database (e.g. lower, upper, ...) Must match LC_CTYPE of template database unless C(template0) is used as template.
        attribute :lc_ctype
        validates :lc_ctype, type: String

        # @return [:present, :absent, :dump, :restore, nil] The database state. present implies that the database should be created if necessary.\r\nabsent implies that the database should be removed if present.\r\ndump requires a target definition to which the database will be backed up.\r\n(Added in 2.4) restore also requires a target definition from which the database will be restored.\r\n(Added in 2.4) The format of the backup will be detected based on the target name.\r\nSupported compression formats for dump and restore are: .bz2, .gz, and .xz\r\nSupported formats for dump and restore are: .sql and .tar\r\n
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :dump, :restore], :message=>"%{value} needs to be :present, :absent, :dump, :restore"}, allow_nil: true

        # @return [String, nil] File to back up or restore from. Used when state is "dump" or "restore"
        attribute :target
        validates :target, type: String

        # @return [String, nil] Further arguments for pg_dump or pg_restore. Used when state is "dump" or "restore"
        attribute :target_opts
        validates :target_opts, type: String

        # @return [String, nil] The value specifies the initial database (which is also called as maintenance DB) that Ansible connects to.
        attribute :maintenance_db
        validates :maintenance_db, type: String
      end
    end
  end
end
