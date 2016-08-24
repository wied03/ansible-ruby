# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vmware_cluster < Base
        # @return [String] The name of the datacenter the cluster will be created in.
        attribute :datacenter_name
        validates :datacenter_name, presence: true, type: String

        # @return [String] The name of the cluster that will be created
        attribute :cluster_name
        validates :cluster_name, presence: true, type: String

        # @return [Boolean, nil] If set to True will enable HA when the cluster is created.
        attribute :enable_ha
        validates :enable_ha, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] If set to True will enable DRS when the cluster is created.
        attribute :enable_drs
        validates :enable_drs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] If set to True will enable vSAN when the cluster is created.
        attribute :enable_vsan
        validates :enable_vsan, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
