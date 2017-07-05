# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Each row in mysql_replication_hostgroups represent a pair of writer_hostgroup and reader_hostgroup. ProxySQL will monitor the value of read_only for all the servers in specified hostgroups, and based on the value of read_only will assign the server to the writer or reader hostgroups.
      class Proxysql_replication_hostgroups < Base
        # @return [Integer] Id of the writer hostgroup.
        attribute :writer_hostgroup
        validates :writer_hostgroup, presence: true, type: Integer

        # @return [Integer] Id of the reader hostgroup.
        attribute :reader_hostgroup
        validates :reader_hostgroup, presence: true, type: Integer

        # @return [Object, nil] Text field that can be used for any purposed defined by the user.
        attribute :comment

        # @return [:present, :absent, nil] When C(present) - adds the replication hostgroup, when C(absent) - removes the replication hostgroup.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Save mysql host config to sqlite db on disk to persist the configuration.
        attribute :save_to_disk
        validates :save_to_disk, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Dynamically load mysql host config to runtime memory.
        attribute :load_to_runtime
        validates :load_to_runtime, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The username used to authenticate to ProxySQL admin interface.
        attribute :login_user
        validates :login_user, type: String

        # @return [String, nil] The password used to authenticate to ProxySQL admin interface.
        attribute :login_password
        validates :login_password, type: String

        # @return [String, nil] The host used to connect to ProxySQL admin interface.
        attribute :login_host
        validates :login_host, type: String

        # @return [Integer, nil] The port used to connect to ProxySQL admin interface.
        attribute :login_port
        validates :login_port, type: Integer

        # @return [String, nil] Specify a config file from which login_user and login_password are to be read.
        attribute :config_file
        validates :config_file, type: String
      end
    end
  end
end
