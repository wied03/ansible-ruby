# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage VMware vSphere Datacenters
      class Vmware_datacenter < Base
        # @return [String] The hostname or IP address of the vSphere vCenter API server
        attribute :hostname
        validates :hostname, presence: true, type: String

        # @return [String] The username of the vSphere vCenter
        attribute :username
        validates :username, presence: true, type: String

        # @return [String] The password of the vSphere vCenter
        attribute :password
        validates :password, presence: true, type: String

        # @return [String] The name of the datacenter the cluster will be created in.
        attribute :datacenter_name
        validates :datacenter_name, presence: true, type: String

        # @return [:present, :absent, nil] If the datacenter should be present or absent
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
