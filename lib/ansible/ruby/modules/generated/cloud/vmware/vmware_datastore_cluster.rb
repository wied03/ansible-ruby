# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to add and delete datastore cluster in given VMware environment.
      # All parameters and VMware object values are case sensitive.
      class Vmware_datastore_cluster < Base
        # @return [String] The name of the datacenter.
        attribute :datacenter_name
        validates :datacenter_name, presence: true, type: String

        # @return [String] The name of the datastore cluster.
        attribute :datastore_cluster_name
        validates :datastore_cluster_name, presence: true, type: String

        # @return [:present, :absent, nil] If the datastore cluster should be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
