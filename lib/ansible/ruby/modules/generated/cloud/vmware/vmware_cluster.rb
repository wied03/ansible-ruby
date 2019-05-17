# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove VMware vSphere clusters.
      class Vmware_cluster < Base
        # @return [String] The name of the cluster that will be created.
        attribute :cluster_name
        validates :cluster_name, presence: true, type: String

        # @return [String] The name of the datacenter the cluster will be created in.
        attribute :datacenter_name
        validates :datacenter_name, presence: true, type: String

        # @return [:yes, :no, nil] If set to C(yes) will enable DRS when the cluster is created.
        attribute :enable_drs
        validates :enable_drs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If set to C(yes) will enable HA when the cluster is created.
        attribute :enable_ha
        validates :enable_ha, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If set to C(yes) will enable vSAN when the cluster is created.
        attribute :enable_vsan
        validates :enable_vsan, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:absent, :present, nil] Create (C(present)) or remove (C(absent)) a VMware vSphere cluster.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
