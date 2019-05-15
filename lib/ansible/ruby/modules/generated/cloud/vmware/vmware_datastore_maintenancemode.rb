# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to manage maintenance mode of a datastore.
      class Vmware_datastore_maintenancemode < Base
        # @return [String, nil] Name of datastore to manage.,If C(datastore_cluster) or C(cluster_name) are not set, this parameter is required.
        attribute :datastore
        validates :datastore, type: String

        # @return [String, nil] Name of the datastore cluster from all child datastores to be managed.,If C(datastore) or C(cluster_name) are not set, this parameter is required.
        attribute :datastore_cluster
        validates :datastore_cluster, type: String

        # @return [String, nil] Name of the cluster where datastore is connected to.,If multiple datastores are connected to the given cluster, then all datastores will be managed by C(state).,If C(datastore) or C(datastore_cluster) are not set, this parameter is required.
        attribute :cluster_name
        validates :cluster_name, type: String

        # @return [:present, :absent, nil] If set to C(present), then enter datastore into maintenance mode.,If set to C(present) and datastore is already in maintenance mode, then no action will be taken.,If set to C(absent) and datastore is in maintenance mode, then exit maintenance mode.,If set to C(absent) and datastore is not in maintenance mode, then no action will be taken.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
