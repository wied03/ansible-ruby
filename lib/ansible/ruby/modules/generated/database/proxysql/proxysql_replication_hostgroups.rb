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
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
