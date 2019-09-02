# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove PostgreSQL extensions from a database.
      class Postgresql_ext < Base
        # @return [String] name of the extension to add or remove
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] name of the database to add or remove the extension to/from
        attribute :db
        validates :db, presence: true, type: String

        # @return [Object, nil] The username used to authenticate with
        attribute :login_user

        # @return [Object, nil] The password used to authenticate with
        attribute :login_password

        # @return [String, nil] Host running the database
        attribute :login_host
        validates :login_host, type: String

        # @return [Integer, nil] Database port to connect to.
        attribute :port
        validates :port, type: Integer

        # @return [:present, :absent, nil] The database extension state
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
