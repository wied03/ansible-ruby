# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Redis < Base
        # @return [String] The selected redis command
        attribute :command
        validates :command, presence: true, inclusion: {:in=>[:slave, :flush, :config], :message=>"%{value} needs to be :slave, :flush, :config"}

        # @return [Object] The password used to authenticate with (usually not used)
        attribute :login_password

        # @return [String] The host running the database
        attribute :login_host
        validates :login_host, type: String

        # @return [Fixnum] The port to connect to
        attribute :login_port
        validates :login_port, type: Fixnum

        # @return [String] The host of the master instance [slave command]
        attribute :master_host
        validates :master_host, type: String

        # @return [String] The port of the master instance [slave command]
        attribute :master_port
        validates :master_port, type: String

        # @return [String] the mode of the redis instance [slave command]
        attribute :slave_mode
        validates :slave_mode, inclusion: {:in=>[:master, :slave], :message=>"%{value} needs to be :master, :slave"}, allow_nil: true

        # @return [String] The database to flush (used in db mode) [flush command]
        attribute :db
        validates :db, type: String

        # @return [String] Type of flush (all the dbs in a redis instance or a specific one) [flush command]
        attribute :flush_mode
        validates :flush_mode, inclusion: {:in=>[:all, :db], :message=>"%{value} needs to be :all, :db"}, allow_nil: true

        # @return [String] A redis config key.
        attribute :name
        validates :name, type: String

        # @return [String] A redis config value.
        attribute :value
        validates :value, type: String
      end
    end
  end
end
