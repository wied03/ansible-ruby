# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove MSSQL databases from a remote host.
      class Mssql_db < Base
        # @return [String] name of the database to add or remove
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] The username used to authenticate with
        attribute :login_user

        # @return [Object, nil] The password used to authenticate with
        attribute :login_password

        # @return [Object, nil] Host running the database
        attribute :login_host

        # @return [Integer, nil] Port of the MSSQL server. Requires login_host be defined as other then localhost if login_port is used
        attribute :login_port
        validates :login_port, type: Integer

        # @return [:present, :absent, :import, nil] The database state
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :import], :message=>"%{value} needs to be :present, :absent, :import"}, allow_nil: true

        # @return [String, nil] Location, on the remote host, of the dump file to read from or write to. Uncompressed SQL files (C(.sql)) files are supported.
        attribute :target
        validates :target, type: String

        # @return [String, nil] Automatically commit the change only if the import succeed. Sometimes it is necessary to use autocommit=true, since some content can't be changed within a transaction.
        attribute :autocommit
        validates :autocommit, type: String
      end
    end
  end
end
