# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vmware_cluster < Base
        # @return [Object] The name of the datacenter the cluster will be created in.
        attribute :datacenter_name
        validates :datacenter_name, presence: true

        # @return [Object] The name of the cluster that will be created
        attribute :cluster_name
        validates :cluster_name, presence: true

        # @return [Object] If set to True will enable HA when the cluster is created.
        attribute :enable_ha

        # @return [Object] If set to True will enable DRS when the cluster is created.
        attribute :enable_drs

        # @return [Object] If set to True will enable vSAN when the cluster is created.
        attribute :enable_vsan
      end
    end
  end
end
