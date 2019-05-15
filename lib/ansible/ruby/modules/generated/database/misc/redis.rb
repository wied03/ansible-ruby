# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Unified utility to interact with redis instances.
      class Redis < Base
        # @return [:config, :flush, :slave] The selected redis command,C(config) (new in 1.6), ensures a configuration setting on an instance.,C(flush) flushes all the instance or a specified db.,C(slave) sets a redis instance in slave or master mode.
        attribute :command
        validates :command, presence: true, inclusion: {:in=>[:config, :flush, :slave], :message=>"%{value} needs to be :config, :flush, :slave"}

        # @return [Object, nil] The password used to authenticate with (usually not used)
        attribute :login_password

        # @return [String, nil] The host running the database
        attribute :login_host
        validates :login_host, type: String

        # @return [Integer, nil] The port to connect to
        attribute :login_port
        validates :login_port, type: Integer

        # @return [String, nil] The host of the master instance [slave command]
        attribute :master_host
        validates :master_host, type: String

        # @return [Integer, nil] The port of the master instance [slave command]
        attribute :master_port
        validates :master_port, type: Integer

        # @return [:master, :slave, nil] the mode of the redis instance [slave command]
        attribute :slave_mode
        validates :slave_mode, inclusion: {:in=>[:master, :slave], :message=>"%{value} needs to be :master, :slave"}, allow_nil: true

        # @return [Integer, nil] The database to flush (used in db mode) [flush command]
        attribute :db
        validates :db, type: Integer

        # @return [:all, :db, nil] Type of flush (all the dbs in a redis instance or a specific one) [flush command]
        attribute :flush_mode
        validates :flush_mode, inclusion: {:in=>[:all, :db], :message=>"%{value} needs to be :all, :db"}, allow_nil: true

        # @return [String, nil] A redis config key.
        attribute :name
        validates :name, type: String

        # @return [Integer, nil] A redis config value.
        attribute :value
        validates :value, type: Integer
      end
    end
  end
end
